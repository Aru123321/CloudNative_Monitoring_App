creating an app in py
containerizing it using Dockerfile --> Docker Image --> Docker container
3. Now push the docker image to AWS ECR elastic container registry using BOTO3 model in python code 
docker build -t my-flask-app .
![alt text](image.png)
Look at all the images
docker images
![alt text](image-1.png)
Image saved

now create container
docker run -p 5000:5000 my-flask-app
![alt text](image-2.png)
![alt text](image-3.png)
![alt text](image-4.png)

3.  python3 ecr.py
   ![alt text](image-5.png)

   aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 637423203219.dkr.ecr.us-east-1.amazonaws.com
   ![alt text](image-6.png)

docker build -t my-cloud-native-repo .
![Created_Image](image-7.png)
![alt text](image-9.png)
Store image under this name
docker tag my-cloud-native-repo:latest 637423203219.dkr.ecr.us-east-1.amazonaws.com/my-cloud-native-repo:latest
![alt text](image-8.png)

push the image
docker push 637423203219.dkr.ecr.us-east-1.amazonaws.com/my-cloud-native-repo:latest
![alt text](image-10.png)

3 nodes
![alt text](image-13.png)

node created
![alt text](image-11.png)


![alt text](image-12.png)
