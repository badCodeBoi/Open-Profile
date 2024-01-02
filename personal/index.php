<?php
$conn = mysqli_connect('localhost','root','','hbms') or die ('connection failded');
if(isset($_POST['send']))
{
$name = mysqli_real_escape_string($conn, $_POST['name']);
$email = mysqli_real_escape_string($conn, $_POST['email']);
$number =mysqli_real_escape_string($conn, $_POST['number']);
$msg = mysqli_real_escape_string($conn, $_POST['message']);
$select_message = mysqli_query($conn, "SELECT * FROM 'contact_form' WHERE name = '$name' AND email = '$email' AND number = '$number' AND message = '$msg'") or die ('query failed');
if(mysqli_num_rows($select_message) > 0)
{
$message[] = 'message sent.';
}else
{
   mysqli_query($conn, "INSERT INTO `contact_form`(name, email, number, message) VALUES('$name', '$email', '$number', '$msg')") or die('A issue was encountered;please try again.');
   $message[] = 'sent successfully!'; 
}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Boitumelo William Taunyane Portfolio</title>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
<link rel="stylesheet" href="css/style.css">
</head>

<body>
<?php
if(isset($message))
{
foreach($message as $message){
    echo ' <div class="message" data-aos="zoom-out">
       <span>'.$message.'</span>
       <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
    </div>';
}
}
?>
<header class="header">
<div id="menu-btn" class="fas fa-bars"></div>
        <a href="#home" class="logo">Personal Webpage of Boitumelo</a>
    
        <nav class="navbar">
            <a href="#home" class="active">home</a>
            <a href="#about">about</a>
            <a href="#services">services</a>
            <a href="#contact">contact</a>
        </nav>
        <div class="follow">
            <a href="#" class="fab fa-facebook">facebook</a>
            <a href="#" class="fab fa-tictok">TicTok</a>
            <a href="#" class="fab fa-github">github</a>
            <a href="#" class="fab fa-linkedin">linkedin</a>
        </div>
    </header>

<section class="home" id="home">
<div class="image" data-aos="fade-right">
<img src="images/que2.jpg" alt="">
</div>
<div class="content">
<h3 data-aos="fade-up">Hello, Dumelang, Awe I go by the name Boitumelo</h3>
<span data-aos="fade-up">Amature web developer</span>
<p data-aos="fade-up">Hi there I am Boitumelo,but you can call me "Boy 2 Mellow";I am a aspiring
web application developer who hopes to make a little difference on this
planet, but to do that I need exprience, if you're in need of a amatuer dev, I might just be your guy</p>
<a data-aos="fade-up" href="#about" class="btn">About Boitumelo</a>
</div>
</section>

<section class="about" id = "about">
<h1 class="heading" data-aos="fade-up"><span> Details </span></h1>
<div class="biography">
<p data-aos="fade-up">I am what I call a high energy introverted personality, whom works best under
pressure and always eager to learn.</p>

<div class="bio">
<h3 data-aos="zoom-in"><span>name: </span>Boitumelo Taunyane</h3>
<h3 data-aos="zoom-in"><span>Email: </span>tumitaunyane@icloud.com</h3>
<h3 data-aos="zoom-in"><span>Adress: </span>Sasolburg ,Free State,1947, South Africa</h3>
<h3 data-aos="zoom-in"><span>phone: </span>+27 71 028-9075</h3>
<h3 data-aos="zoom-in"><span>Age: </span>28 years</h3>
<h3 data-aos="zoom-in"><span>Exprience: </span>0 years (4 years informal)</h3>
</div>

<a href="#" class="btn" data-aos="fade-up">DOWNLOAD A COPY OF MY CV HERE</a>
</div>

<div class="skills" data-aos="fade-up">
<h1 class="heading"><span> skills </span></h1>
<div class="progress">
    <div class="bar" data-aos="fade-up"><h3><span>Bussiness Management</span> <span>67%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Computer Literacy 1(Windows)</span> <span>75%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Computer Literacy 2 (Word)</span> <span>81%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Computer Literacy 1A</span> <span>82%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Computer Literacy 2 (Exel)</span> <span>90%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>IT System Management 1</span> <span>56%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Systems Development</span> <span>54%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>PC orientation</span> <span>81%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Business Communication</span> <span>63%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Basic financing & Budgeting</span> <span>56%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Database programming</span> <span>57%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Praxis</span> <span>73%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Technical Systems & support (A+ COMTIA)</span> <span>62%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Socio-Economics</span> <span>65%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Android App Development</span> <span>81%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Systems Development 2B</span> <span>56%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Systems Development Project Management 3</span> <span>64%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Systems Development 2A</span> <span>69%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Praxis S3A(Ethical hacking)</span> <span>52%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Workflow Management 3</span> <span>72%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Software Testing 3</span> <span>54%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Systems Analysis and Design 3</span> <span>63%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Systems Development 3</span> <span>67%</span></h3></div>
    <div class="bar" data-aos="fade-up"><h3><span>Praxis S3B (Cyber Law and project Development and Execution)</span> <span>70%</span></h3></div>

</div>

<div class="edu-exp">
<h1 class="heading"><span>Education and Exprience</span></h1>
<div class="row">
    <div class="box-container">
        <h3 class="title">Education</h3>

        <div class="box">
            <span>(2010-20216)</span>
        <h3>High-School</h3>
    <p>I completed my National Senior Certificate in 2016 at Wei-Veld hotel and agricultural high-school.</p>
</div>

<div class="box">
            <span>(2019-2023)</span>
        <h3>Boston City Campus & Business College</h3>
        <p> Diploma in Systems Development </p>
</div>
</div>

<div class="box-container">
        <h3 class="title">exprience</h3>
        <div class="box">
        <span></span>
        <h3></h3>
    <p>I currently have no formal work exprience.</p>
</div>

</div>
</div>
</div>
</section>

<section class="services" id="services">
<h1 class="heading" data-aos="fade-up"><span>Services</span></h1>
<div class="box-container">
<div class="box" data-aos="fade-left">
    <i class="fas fa-code"></i>
    <h3>Web development</h3>
    <p>I have exprience with HTML, php, CSS and JavaScript, currently on my React Journey</p>
 </div>
 
 <div class="box" data-aos="fade-left">
    <i class="fas fa-paint-brush"></i>
    <h3>Mobile Application development</h3>
    <p>At Boston Business college we had to complete alot of projects using the Android studio environment.</p>
 </div>

 <div class="box" data-aos="fade-right">
    <i class="fas fa-code"></i>
    <h3>Java development</h3>
    <p>I'm very interested in this particular language yet, I'm a bit of a amatuer.</p>
 </div>

 <div class="box" data-aos="fade-right">
    <i class="fab fa-wordpress"></i>
    <h3>Windows System</h3>
    <p>I have exprience with the windows system.</p>
 </div>

 <div class="box" data-aos="fade-right">
    <i class="fa fa-terminal" data-aos="zoom-in"></i>
    <h3>Linux System</h3>
    <p>I have exprience with the Linux environment and it's Command Line.</p>
 </div>

 <div class="box" data-aos="fade-left">
    <i class="fas fa-chart-line"></i>
    <h3>SQL</h3>
    <p>I'm comfortable around the SQL syntax.</p>
 </div>

 <div class="box" data-aos="fade-left">
    <i class="fab fa-tachometer"></i>
    <h3> Computer repair and maintenance</h3>
    <p> I've dealt with having to troubleshoot and/or diagnosing hardware and software issues.</p>
 </div>

 <div class="box" data-aos="fade-left">
    <i class="fas fa-laptop"></i>
    <h3>Video Editing</h3>
    <p>Through-out the struggle to develop programming skills, many other skills can be obtained, for me that is video Editing and research skills.</p>
 </div>
</div>
</section>


<section class="contact" id="contract">
<h1 class="heading" data-aos="fade-up"><span>Contact me</span></h1>
<form action="" method="post">
<div class="flex">
<input data-aos="fade-right" type="text" name="name" placeholder="Your Name" class="box" required>
<input data-aos="fade-left" type="email" name="email" placeholder="Your E-Mail Address" class="box" required>
</div>
<input data-aos="fade-up" type="number" min="0" name="number" placeholder="Your contact number" class="box" required>
<textarea data-aos="fade-up" name="message" class="box" required placeholder="have your say...." cols="30" rows="10"></textarea>
<input type="submit" data-aos="zoom-in" value="send message" name="send" class="btn">
</form>

<div class="box-container">
<div class="box" data-aos="zoom-in">
    <i class="fas fa-phone"></i>
    <h3>Phone</h3>
    <p>+27 71 028 9075</p>
</div>

<div class="box" data-aos="zoom-in">
    <i class="fas fa-envelop"></i>
    <h3>E-Mail</h3>
    <p>tumitaunyane@icloud.com</p>
</div>

<div class="box" data-aos="zoom-in">
    <i class="fas fa-map-marker-alt"></i>
    <h3>Address</h3>
    <p>Sasolburg, South Africa</p>
</div>
</div>
</section>

<div class="credit"> &copy;  copyright   @  <?php echo date('Y')?>By<span>B.W.Taunyane</span>

<p>
<a href="http://jigsaw.w3.org/css-validator/check/referer">
    <img style="border:0;width:88px;height:31px"
        src="http://jigsaw.w3.org/css-validator/images/vcss-blue"
        alt="Valid CSS!" />
    </a>
</p>
</div>

<script src="js/script.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
<script>
AOS.init({
    duration:800,
    delay:300
});
</script>
</body>
</html>