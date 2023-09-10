FROM python:3.11.5

# Set working directory
WORKDIR /mypython

# Copy 'app subfolder content to current directory, i.r. '/mypython'
COPY . .

# Run command at build time
RUN pip install -r requirements.txt

# Set environment variable
ENV FLASK_ENV development

#Declare container Ports
EXPOSE 5000

# define stat-up command, entry points is null
CMD ["python", "mypython1.py"]