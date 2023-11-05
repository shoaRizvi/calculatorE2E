from flask import Flask, request, render_template

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def calculator():
    result = None

    if request.method == 'POST':
        try:
            num1 = float(request.form['num1'])
            num2 = float(request.form['num2'])
            operator = request.form['operator']

            if operator == '+':
                result = num1 + num2
            elif operator == '-':
                result = num1 - num2
            elif operator == '*':
                result = num1 * num2
            else:
                result = "error; allowed operators are +, -, or *"

        except ValueError:
            result = "Invalid input. Please enter valid numbers."

    return render_template('calculator.html', result=result)

if __name__ == '__main__':
    app.run(debug=True)
