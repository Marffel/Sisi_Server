

FROM python:3.9

# Set working directory
WORKDIR /code

# Copy requirements file
COPY ./code/requirements.txt /code/

# Install dependencies
RUN pip install -r requirements.txt

# Copy semua file di folder code ke dalam container
COPY ./code /code/

# Jalankan server Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
