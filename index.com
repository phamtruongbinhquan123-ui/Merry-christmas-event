<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Merry Christmas Stage</title>
<style>
  @import url('https://googleapis.com');
  *{box-sizing:border-box;margin:0;padding:0}
  body{background:radial-gradient(circle at top,#3b0404 0%,#09090b 65%,#000 100%);color:#fff;font-family:'Quicksand',sans-serif;min-height:100vh;overflow-x:hidden}
  .lasers,.sparkles{position:fixed;inset:0;pointer-events:none;overflow:hidden}
  .lasers{z-index:0}.sparkles{z-index:1}
  .l-top,.l-bot{position:absolute;width:2.5px;height:125vh;opacity:.65;mix-blend-mode:screen;animation:sw ease-in-out infinite alternate}
  .l-top{top:-15px;transform-origin:top center}.l-bot{bottom:-15px;transform-origin:bottom center}
  @keyframes sw{0%{transform:rotate(var(--s));opacity:.2}50%{opacity:.9}100%{transform:rotate(var(--e));opacity:.3}}
  .bling{position:absolute;border-radius:50%;animation:fall linear infinite,tw 1.1s ease-in-out infinite alternate}
  @keyframes fall{to{transform:translateY(105vh)}}
  @keyframes tw{from{opacity:.2;transform:scale(.7)}to{opacity:1;transform:scale(1.4)}}
  .stage{position:relative;z-index:2;max-width:1050px;margin:0 auto;padding:20px 18px 60px}
  .lights{display:flex;justify-content:space-around;margin-bottom:16px;padding:8px;background:rgba(0,0,0,.75);border-radius:30px;border:1px solid rgba(255,215,0,.4)}
  .bulb{width:13px;height:13px;border-radius:50%;background:#ffd700;box-shadow:0 0 15px #ffd700,0 0 30px #ffae00;animation:bl .9s infinite alternate}
  .bulb:nth-child(even){background:#ff1e38;box-shadow:0 0 15px #ff1e38,0 0 30px #d90429;animation-delay:.45s}
  @keyframes bl{from{opacity:.3;transform:scale(.8)}to{opacity:1;transform:scale(1.3)}}
  header,.box,.card{background:rgba(15,15,18,.9);border-radius:16px;padding:20px;margin-bottom:22px;border:1.5px solid #ffd700;box-shadow:0 0 25px rgba(255,215,0,.3)}
  header{text-align:center;box-shadow:0 0 35px rgba(255,215,0,.5),inset 0 0 25px rgba(217,4,41,.5)}
  h1{font-family:'Cinzel',serif;font-size:clamp(2.2rem,5vw,3.8rem);color:#ffd700;text-transform:uppercase;letter-spacing:3px;text-shadow:0 0 12px #ffd700,0 0 28px #f00}
  h2{text-align:center;color:#ffd700;margin-bottom:14px;font-size:1.2rem;text-transform:uppercase;letter-spacing:1.5px}
  .flex-wrap{display:flex;flex-wrap:wrap;justify-content:center;gap:12px}
  .btn{padding:12px 24px;border-radius:50px;background:linear-gradient(135deg,#b3001b,#5c000e);border:2px solid #ffd700;color:#fff;text-decoration:none;font-weight:700;box-shadow:0 0 15px rgba(255,215,0,.4);transition:.3s}
  .btn:hover{background:#ffd700;color:#000;transform:scale(1.04);box-shadow:0 0 28px #ffd700}
  .tag{background:#141418;border:1px solid #ffd700;padding:8px 16px;border-radius:25px;font-weight:700}
  .grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(300px,1fr));gap:18px}
  .card{margin-bottom:0;border-color:rgba(255,255,255,.2);border-top:3.5px solid #d90429}
.card.full{grid-column:1/-1}
  .card.vn{border:1.5px solid #ffd700;background:linear-gradient(135deg,rgba(170,0,20,.35),rgba(18,18,22,.95))}
  .card h3{color:#ffd700;font-size:1.2rem;margin-bottom:10px;border-bottom:1px dashed rgba(255,215,0,.4);padding-bottom:6px}
  .card p,.card li{line-height:1.6;font-size:.97rem;color:#f4f4f4}
  .card ul{list-style:none}
  .card li{margin-bottom:6px;padding-left:16px;position:relative}
  .card li::before{content:"✦";color:#ffd700;position:absolute;left:0}
  .card strong{color:#ff4d6d}
  .floor{height:12px;margin-top:35px;background:linear-gradient(90deg,#000,#d90429,#ffd700,#fff,#ffd700,#d90429,#000);border-radius:50%;box-shadow:0 0 30px #ffd700}
</style>
</head>
<body>
<div class="lasers" id="L"></div>
<div class="sparkles" id="S"></div>
<div class="stage">
  <div class="lights"><div class="bulb"></div><div class="bulb"></div><div class="bulb"></div><div class="bulb"></div><div class="bulb"></div><div class="bulb"></div><div class="bulb"></div><div class="bulb"></div><div class="bulb"></div><div class="bulb"></div><div class="bulb"></div><div class="bulb"></div></div>
  <header>
    <h1>✨ Merry Christmas ✨</h1>
    <p>Sân Khấu Đêm Nhạc & Lễ Hội Giáng Sinh An Lành</p>
  </header>

  <section class="box">
    <h2>🎵 Link Âm Nhạc Sân Khấu 🎵</h2>
    <div class="flex-wrap">
      <a class="btn" href="https://youtu.be" target="_blank">🔔 Nhạc 1: Jingle Bells</a>
      <a class="btn" href="https://youtu.be" target="_blank">🎤 Nhạc 2: Last Christmas & Rudolph (BLACKPINK)</a>
    </div>
  </section>

  <section class="box">
    <h2>🎄 Thành Viên Thực Hiện 🎄</h2>
    <div class="flex-wrap">
      <span class="tag">⭐ Phạm Trương Bình Quân</span>
      <span class="tag">⭐ Phan Dương Uyển Nhi</span>
      <span class="tag">⭐ Lương Thị Ngọc Thuỷ</span>
      <span class="tag">⭐ Phạm Thị Thu Hoà</span>
    </div>
  </section>

  <section class="grid">
    <div class="card">
      <h3>A. Nguồn gốc</h3>
      <p>Lễ Giáng Sinh (còn gọi là Noel) có nguồn gốc từ Kitô giáo, kỷ niệm ngày Chúa Giê-su ra đời tại Bethlehem. Ngày lễ chính thức được tổ chức vào ngày 25 tháng 12 hằng năm, bắt đầu từ đêm 24 tháng 12 (lễ Vọng).</p>
    </div>
    <div class="card">
      <h3>B. Ý nghĩa</h3>
      <p>Bên cạnh ý nghĩa tôn giáo thiêng liêng về sự ra đời của Đấng Cứu Thế, Giáng Sinh ngày nay còn là ngày lễ của gia đình và tình yêu thương. Đây là dịp để mọi người quây quần, chia sẻ niềm vui, trao nhau những lời chúc bình an và thể hiện sự quan tâm đến những người xung quanh.</p>
    </div>
    <div class="card full">
      <h3>C. Biểu tượng</h3>
      <ul>
<li><strong>Cây thông Noel:</strong> Biểu tượng của sức sống mãnh liệt, niềm hy vọng và sự ấm no ngay giữa mùa đông lạnh giá.</li>
        <li><strong>Ông già Noel:</strong> Đại diện cho lòng nhân ái, sự hào phóng và niềm vui bất ngờ dành cho trẻ nhỏ.</li>
        <li><strong>Ngôi sao Giáng Sinh:</strong> Dẫn lối và tượng trưng cho ánh sáng, phép màu của Chúa.</li>
        <li><strong>Hang đá và máng cỏ:</strong> Tái hiện khung cảnh giản dị nơi Chúa Giê-su chào đời.</li>
      </ul>
    </div>
    <div class="card">
      <h3>D. Hoạt động phổ biến</h3>
      <p>Vào dịp này, mọi người thường cùng nhau trang trí nhà cửa, dựng cây thông, tặng quà và gửi thiệp chúc mừng. Các tín hữu Kitô giáo sẽ đến nhà thờ tham dự Thánh lễ đêm và hát Thánh ca, trong khi các gia đình tổ chức bữa tiệc ấm cúng bên nhau.</p>
    </div>
    <div class="card vn">
      <h3>E. Giáng Sinh tại Việt Nam</h3>
      <p>Tại Việt Nam, dù không phải là ngày nghỉ lễ chính thức nhưng Giáng Sinh được đón nhận rất nồng nhiệt bởi cả người có đạo lẫn không theo đạo. Các con phố, trung tâm thương mại và xóm đạo được trang hoàng lộng lẫy từ sớm, thu hút đông đảo giới trẻ và các gia đình xuống đường dạo chơi, chụp ảnh và tận hưởng không khí lễ hội rộn ràng.</p>
    </div>
  </section>
  <div class="floor"></div>
</div>
<script>
  const L=document.getElementById('L'),S=document.getElementById('S'),C=['#ffd700','#ff1e38','#fff','#ffae00'];
  for(let i=0;i<80;i++){
    let b=document.createElement('div'),top=i<45,c=C[i%4];
    b.className=top?'l-top':'l-bot';
    b.style.left=((top?i/45:(i-45)/35)*100)+'%';
    b.style.background=`linear-gradient(to ${top?'bottom':'top'},${c},transparent)`;
    b.style.boxShadow=`0 0 10px ${c}`;
    b.style.setProperty('--s',(-40+(i%10)*4)+'deg');
    b.style.setProperty('--e',(40-(i%10)*4)+'deg');
    b.style.animationDuration=(2+(i%5)*.5)+'s';
    b.style.animationDelay=((i%8)*.2)+'s';
    L.appendChild(b);
  }
  for(let i=0;i<60;i++){
    let d=document.createElement('div'),g=Math.random()>.3;
    d.className='bling';
    d.style.cssText=`width:${Math.random()*4+2}px;height:${Math.random()*4+2}px;left:${Math.random()*100}vw;top:${-10-Math.random()*20}vh;background:${g?'#ffd700':'#fff'};box-shadow:0 0 10px ${g?'#ffd700':'#fff'};animation-duration:${Math.random()*5+4}s,1s;animation-delay:${Math.random()*4}s`;
    S.appendChild(d);
  }
</script>
</body>
</html>
