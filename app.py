from flask import Flask, jsonify, request

app = Flask(__name__)

tasks = [
    {
        'id': 1,
        'title': 'Task 1',
        'description': 'This is task 1',
        'done': False
    },
    {
        'id': 2,
        'title': 'Task 2',
        'description': 'This is task 2',
        'done': False
    }
]


@app.route('/tasks', methods=['GET'])
def get_tasks():

    return jsonify({'tasks': tasks})


@app.route('/tasks/<int:task_id>', methods=['GET'])
def get_task(task_id):
    """Get a single task by ID"""
    task = next((task for task in tasks if task['id'] == task_id), None)
    if task:
        return jsonify({'task': task})
    else:
        return jsonify({'message': 'Task not found'}), 404


@app.route('/tasks', methods=['POST'])
def create_task():
    """Create a new task"""
    if not request.json or 'title' not in request.json:
        return jsonify({'message': 'Title is required'}), 400
    task = {
        'id': tasks[-1]['id'] + 1 if tasks else 1,
        'title': request.json['title'],
        'description': request.json.get('description', ""),
        'done': False
    }
    tasks.append(task)
    return jsonify({'task': task}), 201


if __name__ == '__main__':
    app.run(debug=True)
