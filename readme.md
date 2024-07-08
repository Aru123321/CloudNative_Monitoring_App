creating an app in py
containerizing it using Dockerfile --> Docker extra/image --> Docker container
3. Now push the docker extra/image to AWS ECR elastic container registry using BOTO3 model in python code 
docker build -t my-flask-app .
![alt text](extra/image.png)
Look at all the extra/images
docker extra/images
![alt text](extra/image-1.png)
extra/image saved

now create container
docker run -p 5000:5000 my-flask-app
![alt text](extra/image-2.png)
![alt text](extra/image-3.png)
![alt text](extra/image-4.png)

3.  python3 ecr.py
   ![alt text](extra/image-5.png)

   aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 637423203219.dkr.ecr.us-east-1.amazonaws.com
   ![alt text](extra/image-6.png)

docker build -t my-cloud-native-repo .
![Created_extra/image](extra/image-7.png)
![alt text](extra/image-9.png)
Store extra/image under this name
docker tag my-cloud-native-repo:latest 637423203219.dkr.ecr.us-east-1.amazonaws.com/my-cloud-native-repo:latest
![alt text](extra/image-8.png)

push the extra/image
docker push 637423203219.dkr.ecr.us-east-1.amazonaws.com/my-cloud-native-repo:latest
![alt text](extra/image-10.png)

3 nodes
![alt text](extra/image-13.png)

node created
![alt text](extra/image-11.png)


![alt text](extra/image-12.png)
