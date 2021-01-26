import telebot
from telebot import types
import sys
import mysql.connector
from mysql.connector import errorcode

bot = telebot.TeleBot("1501931329:AAFC0EsnUCuNUQXojj0ydNuaeoxDlEqMkkw")
name = ''
surname = ''
time = ''

try:
    db = mysql.connector.connect(
        host="localhost",
        user="root",
        passwd="123456",
        database="interns"
    )
except mysql.connector.Error as error:
    if error.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print('Mistake in user or password')
        sys.exit()
    elif error.errno == errorcode.ER_BAD_DB_ERROR:
        print('Database not found')
        sys.exit()
    else:
        print(error)
        sys.exit()
cursor = db.cursor()


def handle(message):
    chat_id = message['chat']['id']
    command = message['text']


file = open(r"C:\Users\ww\Desktop\bot.txt")
text1 = file.readlines()
file.close()

keyboard1 = telebot.types.ReplyKeyboardMarkup(resize_keyboard=True)
keyboard1.row('Internships \N{sparkles}', 'Full Time work \N{sparkles}', 'Part Time work \N{sparkles}')


@bot.message_handler(commands=['start'])
def send_message(message):
    bot.reply_to(message, "Hi, buddy \N{grinning face}")
    bot.send_sticker(message.chat.id,
                     'CAACAgIAAxkBAAEBygtgBxFXsO9yzSZXupraxGNUJ-g4_wACjgEAAiteUwswRKMveY_xOx4E', reply_markup=keyboard1)


@bot.message_handler(commands=['help'])
def send_message_2(message):
    bot.reply_to(message, text1)


@bot.message_handler(func=lambda message: True)
def echo_message(message):
    if message.text == 'Full Time work \N{sparkles}' or message.text == 'Part Time work \N{sparkles}':
        bot.register_next_step_handler(message, variants)
    elif message.text == 'Internships \N{sparkles}':
        bot.register_next_step_handler(message, variants1)


@bot.message_handler(content_types=["text"])
def variants(var):
    key = types.InlineKeyboardMarkup(row_width=2)
    key1 = types.InlineKeyboardButton(text='Computer Science', callback_data='Computer Science')
    key2 = types.InlineKeyboardButton(text='Management', callback_data='Management')
    key3 = types.InlineKeyboardButton(text='SMM', callback_data='SMM')
    key4 = types.InlineKeyboardButton(text='Law', callback_data='Law')
    key5 = types.InlineKeyboardButton(text='Bank manager', callback_data='Bank manager')
    key7 = types.InlineKeyboardButton(text='Teacher', callback_data='Teacher')
    key.add(key1, key2, key3, key4, key5, key7)
    bot.send_message(var.chat.id, "Choose your preferred sphere:", reply_markup=key)


@bot.message_handler(content_types=["text"])
def variants1(var):
    key = types.InlineKeyboardMarkup(row_width=2)
    key1 = types.InlineKeyboardButton(text='Computer Science', callback_data='Computer_Science')
    key2 = types.InlineKeyboardButton(text='Management', callback_data='Management1')
    key3 = types.InlineKeyboardButton(text='SMM', callback_data='SMM1')
    key.add(key1, key2, key3)
    bot.send_message(var.chat.id, "Choose your preferred sphere:", reply_markup=key)


@bot.callback_query_handler(func=lambda call: True)
def callback_func(call):
    if call.data == 'Computer Science':
        cursor.execute("SELECT iqualification FROM intern WHERE ifield = 'Computer Science'")
        for result in cursor.fetchall():
            # print(result)
            # global list
            # list= {
            #    'Job': result[1],
            #    'Description': result[2]
            # }
            # print(list.items())
            bot.send_message(call.message.chat.id, result)
    elif call.data == 'SMM':
        cursor.execute("SELECT jdescription FROM job WHERE jname = 'SMM' and did = 2")
        for smm in cursor.fetchall():
            bot.send_message(call.message.chat.id, smm)
    elif call.data == 'Management':
        cursor.execute("SELECT jdescription FROM job WHERE jname = 'Management'")
        for man in cursor.fetchall():
            bot.send_message(call.message.chat.id, man)
    elif call.data == 'Teacher':
        cursor.execute("SELECT jdescription FROM job WHERE jname = 'Teacher'")
        for teach in cursor.fetchall():
            bot.send_message(call.message.chat.id, teach)
    elif call.data == 'Law':
        cursor.execute("SELECT jdescription FROM job WHERE jname = 'Law' and did = 2")
        for ss in cursor.fetchall():
            bot.send_message(call.message.chat.id, ss)
    elif call.data == 'Bank manager':
        cursor.execute("SELECT jdescription FROM job WHERE jname = 'Bank' and did = 2")
        for ss in cursor.fetchall():
            bot.send_message(call.message.chat.id, ss)
    elif call.data == 'Computer_Science':
        cursor.execute("SELECT jdescription FROM job WHERE jname = 'Computer Science' and did = 1")
        for cs in cursor.fetchall():
            bot.send_message(call.message.chat.id, cs)
    elif call.data == 'SMM1':
        cursor.execute("SELECT jdescription FROM job WHERE jname = 'SMM' and did = 1")
        for ss in cursor.fetchall():
            bot.send_message(call.message.chat.id, ss)
    elif call.data == 'Management1':
        cursor.execute("SELECT jdescription FROM job WHERE jname = 'Manager' and did = 1")
        for ss in cursor.fetchall():
            bot.send_message(call.message.chat.id, ss)


@bot.callback_query_handler(func=lambda call: True)
def callback_func1(call):
    if call.data == 'Computer_Science':
        cursor.execute("SELECT iqualification FROM intern")
        for result in cursor.fetchall():
            # print(result)
            # global list
            # list= {
            #    'Job': result[1],
            #    'Description': result[2]
            # }
            # print(list.items())
            bot.send_message(call.message.chat.id, result)


bot.polling()

