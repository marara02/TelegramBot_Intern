def get_pic(message):
    photo = str(message.text)
    cursor.execute("SELECT photo FROM members WHERE name = ?", (photo,))
    #for photo in cursor.fetchall():
        #pic = open(photo, 'rb')
        #bot.send_message(message.chat.id, pic)

    if photo:
        for photo in cursor.fetchall():
            pic = open('{photo}', 'rb')
            bot.send_message(message.chat.id, pic)
    else:
        bot.send_message(message.chat.id, 'This student is not a member of MT-1903.')
elif message.text.lower() == 'profile picture':
        chat_id = message.chat.id
        bot.send_message(chat_id, 'Whose profile picture do you want to see?\nType in first and last name of the student.')
        bot.register_next_step_handler(message, get_pic)


def find_country(message):
    gameBoard = telebot.types.ReplyKeyboardMarkup(True)
    gameBoard.row('Continue country game', 'Stop country game')
    country = str(message.text)

    conn = sqlite3.connect('countries_db.db')
    cur = conn.cursor()
    cur.execute("SELECT capital FROM countries WHERE country =? ", (country,))
    rows = cur.fetchall()
    print(cur.fetchall())
    if rows:
        for row in rows:
            print(row)
            bot.send_message(message.chat.id,  row)
    else:
        bot.send_message(message.chat.id, "Sorry... Couldn't find \'" + country + "\'")

    bot.send_message(message.chat.id, 'Continue?', reply_markup=gameBoard)
