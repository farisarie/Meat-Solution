//
//  ProductModel.swift
//  Meat Solution
//
//  Created by Caroline Chan on 05/12/22.
//

import Foundation

struct Product: Hashable, Identifiable {
    let id: Int
    let name: String
    let desc: String
    let price: Int
}

let favorites: [Product] = [
  Product(id: 1, name: "Beef Patty", desc: "Beef patty adalah sejenis daging sapi yang telah dibentuk menjadi sebuah isian yang biasa digunakan untuk membuat burger. Daging sapi yang digunakan biasanya adalah daging sapi segar yang telah dicincang halus, kemudian dibentuk menjadi sebuah isian bulat yang bisa dibakar atau dipanggang. Beef patty biasanya terbuat dari daging sapi yang berkualitas tinggi dan telah ditambahkan dengan bumbu-bumbu tertentu untuk memberikan rasa yang lebih enak. Ini adalah produk yang sangat populer di seluruh dunia dan banyak digunakan untuk membuat berbagai macam makanan seperti burger, sandwich, dan bahkan daging panggang.", price: 50000),
  Product(id: 21, name: "shortplateAUS", desc: "ShortplateAUS adalah daging premium yang dihasilkan dari sapi-sapi terbaik di Australia. Daging ini dipilih dan diolah dengan hati-hati untuk menghasilkan tekstur yang lembut dan rasa yang kaya. ShortplateAUS juga diperkaya dengan nutrisi yang baik untuk tubuh sehingga dapat memberikan manfaat kesehatan bagi konsumen. Daging ini cocok untuk diolah dengan berbagai macam masakan, mulai dari steak, burger, hingga soup. Dengan rasa yang nikmat dan kualitas yang terjamin, ShortplateAUS merupakan pilihan yang tepat untuk memenuhi kebutuhan daging berkualitas di rumah Anda.", price: 100000),
  Product(id: 10, name: "Iga Tulang", desc: "Iga tulang adalah salah satu jenis daging yang terbuat dari tulang iga sapi. Daging ini memiliki tekstur yang padat dan kaya akan protein, lemak, dan nutrisi penting lainnya. Iga tulang juga memiliki rasa yang lezat dan gurih, sehingga cocok untuk diolah menjadi berbagai masakan, seperti BBQ, rendang, atau gulai. Produk ini juga disajikan dalam berbagai porsi, mulai dari porsi kecil hingga besar, sehingga bisa dinikmati oleh semua orang.", price: 75000)
]

let products: [Product] = [
  Product(id: 1, name: "Beef Patty", desc: "Beef patty adalah sejenis daging sapi yang telah dibentuk menjadi sebuah isian yang biasa digunakan untuk membuat burger. Daging sapi yang digunakan biasanya adalah daging sapi segar yang telah dicincang halus, kemudian dibentuk menjadi sebuah isian bulat yang bisa dibakar atau dipanggang. Beef patty biasanya terbuat dari daging sapi yang berkualitas tinggi dan telah ditambahkan dengan bumbu-bumbu tertentu untuk memberikan rasa yang lebih enak. Ini adalah produk yang sangat populer di seluruh dunia dan banyak digunakan untuk membuat berbagai macam makanan seperti burger, sandwich, dan bahkan daging panggang.", price: 50000)
    ,
    Product(id: 2, name: "Beef Slice", desc: "Beef slice adalah daging sapi yang dipotong-potong tipis untuk digunakan dalam berbagai jenis masakan. Daging ini dipilih dari bahan berkualitas terbaik dan diproses dengan teknik yang baik untuk menghasilkan tekstur yang lembut dan rasa yang gurih. Beef slice sangat mudah diolah dan cocok untuk diolah menjadi berbagai jenis masakan, seperti steak, sate, atau bahan masakan lainnya. Daging ini juga kaya akan protein dan nutrisi yang baik untuk kesehatan tubuh. Dengan beef slice, Anda bisa menikmati masakan yang lezat dan sehat dengan mudah.", price: 40000)
    ,
    Product(id: 3, name: "blade", desc: "Blade adalah bagian dari daging sapi yang terletak di bagian bawah leher. Daging ini terkenal dengan teksturnya yang lembut dan gurih, sehingga sering digunakan untuk berbagai jenis masakan. Blade daging juga mengandung protein yang tinggi dan rendah lemak, sehingga cocok untuk dikonsumsi oleh berbagai usia. Blade daging juga tersedia dalam berbagai ukuran dan potongan, sehingga dapat disesuaikan dengan kebutuhan dan selera masing-masing individu.", price: 100000)
    ,
  Product(id: 4, name: "brisket", desc: "Brisket adalah daging sapi yang berasal dari bagian bawah dada sapi. Daging ini memiliki tekstur yang lembut dan lezat ketika dimasak dengan benar. Brisket memiliki kandungan lemak yang cukup tinggi, sehingga membutuhkan waktu yang cukup lama untuk dipanggang atau dipanggang hingga empuk dan lembut. Brisket cocok untuk diolah menjadi berbagai macam masakan seperti barbecue, pot roast, atau bahan dasar soup.", price: 80000)
    ,
  Product(id: 5, name: "buntut", desc: "Buntut (daging) adalah bagian daging yang terletak di bagian belakang binatang seperti sapi atau kambing. Buntut memiliki tekstur yang lembut dan empuk dengan rasa yang gurih dan lezat. Buntut dapat diolah menjadi berbagai macam masakan seperti gulai, sup, atau diasap. Buntut juga kaya akan protein dan nutrisi yang baik untuk kesehatan tubuh.", price: 70000)
    ,
  Product(id: 6, name: "chuck", desc: "Chuck adalah jenis daging yang terbuat dari bagian leher sapi. Daging ini memiliki tekstur yang lembut dan lezat, serta kaya akan protein dan zat besi yang dibutuhkan oleh tubuh. Chuck juga mudah dibentuk dan dipotong sesuai dengan kebutuhan, sehingga cocok untuk diolah menjadi berbagai masakan seperti steak, pot roast, ataupun sup daging. Chuck juga memiliki rasa yang kuat dan aromatik, sehingga dapat memberikan cita rasa yang lezat pada masakan yang dibuat.", price: 100000)
    ,
  Product(id: 7, name: "Hati", desc: "Hati adalah salah satu jenis daging yang terbuat dari organ yang terletak di bawah tulang dada pada hewan ternak seperti sapi, domba, dan ayam. Hati merupakan salah satu sumber protein yang sangat tinggi dan kaya akan nutrisi penting seperti vitamin A, B12, dan zat besi.\n\nHati juga mengandung lemak yang bermanfaat untuk meningkatkan sistem imun tubuh dan membantu dalam proses pencernaan. Daging hati juga bisa diolah menjadi berbagai jenis masakan seperti goreng, rebus, atau ditumis bersama sayuran segar untuk menambah citarasa dan kenikmatan makanan.\n\nDengan kandungan nutrisi yang tinggi, daging hati merupakan pilihan yang tepat bagi Anda yang ingin menjaga kesehatan tubuh dan mencukupi kebutuhan nutrisi harian. Jadi, jangan ragu untuk mencoba masakan yang menggunakan daging hati untuk memenuhi kebutuhan nutrisi tubuh Anda.", price: 80000)
    ,
  Product(id: 8, name: "Iga Mix", desc: "Iga Mixed adalah produk daging yang terdiri dari campuran daging iga sapi yang dipilih dengan seksama dan diolah dengan teknik tertentu agar kualitas dan rasa maksimal. Iga ini dijual dalam bentuk potongan yang siap untuk diolah menjadi berbagai masakan seperti bakar, goreng, atau diolah menjadi sate. Iga Mixed ini memiliki tekstur yang lembut dan juicy, serta rasa yang gurih dan sedap. Iga ini juga memiliki kandungan protein yang tinggi, sehingga sangat baik untuk dikonsumsi sebagai sumber protein bagi tubuh.", price: 70000)
    ,
  Product(id: 9, name: "Iga Premium", desc: "Iga premium adalah daging yang dihasilkan dari sapi berkualitas tinggi yang dipilih dengan cermat dan diperlakukan dengan baik sehingga menghasilkan daging yang lembut, juicy, dan penuh dengan rasa yang kaya. Iga premium juga diproses dengan teknik yang tepat untuk menjaga kualitas dan kelezatan daging. Produk ini cocok untuk diolah menjadi berbagai macam masakan seperti steak, BBQ, atau dibakar. Dengan memilih iga premium, Anda akan mendapatkan daging berkualitas tinggi yang akan memuaskan selera Anda.", price: 150000)
    ,
  Product(id: 10, name: "Iga Tulang", desc: "Iga tulang adalah jenis daging yang terdapat pada tulang iga sapi. Daging ini terkenal dengan rasa yang lezat dan tekstur yang lembut. Iga tulang juga mengandung banyak protein dan nutrisi penting lainnya yang dibutuhkan oleh tubuh. Daging ini cocok untuk diolah menjadi berbagai jenis masakan, seperti steak, barbecue, atau ditambahkan ke dalam sup. Iga tulang juga merupakan pilihan yang baik bagi mereka yang ingin menjaga berat badan karena kandungan lemaknya yang rendah.", price: 75000)
    ,
  Product(id: 11, name: "knuckle", desc: "Knuckle adalah salah satu jenis daging yang terletak di bagian atas tulang kaki dari hewan seperti sapi atau kambing. Daging knuckle ini memiliki tekstur yang padat dan memiliki rasa yang lezat. Knuckle daging memiliki kandungan protein yang tinggi dan juga rendah lemak, sehingga sangat cocok untuk dikonsumsi oleh orang yang sedang menjalani program diet. Knuckle daging juga dapat dimasak dengan berbagai cara, seperti dibakar, direbus, atau dimasak dengan saus.", price: 60000)
    ,
  Product(id: 12, name: "oxtail", desc: "Oxtail adalah daging yang diperoleh dari tulang ekor sapi. Daging ini memiliki tekstur yang lembut dan empuk serta rasa yang kaya dan sedap. Oxtail juga kaya akan nutrisi seperti protein, kolagen, dan mineral seperti fosfor, zat besi, dan kalsium. Oxtail biasanya digunakan untuk membuat sup, gulai, atau bahan dasar dalam berbagai masakan lainnya.", price: 120000)
    ,
  Product(id: 13, name: "paru", desc: "Paru merupakan salah satu bagian dari daging sapi yang memiliki tekstur yang lembut dan gurih. Paru juga kaya akan protein dan nutrisi penting lainnya seperti vitamin B12, zinc, dan selenium yang dapat membantu meningkatkan sistem imun tubuh. Daging paru juga rendah lemak dan kalori sehingga cocok untuk dikonsumsi oleh mereka yang sedang menjalani diet atau menjaga berat badan. Daging paru juga dapat diolah dengan berbagai cara, seperti dipanggang, dibakar, atau ditumis untuk menambah cita rasa dan variasi menu makanan.", price: 45000)
    ,
  Product(id: 14, name: "Rendang Chill", desc: "Rendang chilli (daging) adalah masakan tradisional asli Indonesia yang terbuat dari daging sapi yang dipotong kecil-kecil dan diolah dengan bumbu rempah-rempah seperti cengkih, kunyit, jahe, merica, dan garam. Daging tersebut kemudian dibakar dengan api yang besar selama beberapa jam hingga menjadi empuk dan meresap bumbu. Setelah itu, daging dimasukkan ke dalam kuah kental yang terbuat dari santan dan diberi tambahan cabe rawit untuk memberikan sensasi pedas yang lezat. Rendang chilli (daging) cocok untuk disajikan bersama nasi putih atau ketupat.", price: 70000)
    ,
  Product(id: 15, name: "rendang", desc: "Rendang adalah salah satu makanan tradisional dari Indonesia yang terbuat dari daging sapi yang dipotong kecil-kecil dan diolah dengan bumbu rempah-rempah seperti kemiri, ketumbar, dan lada yang dicampur dengan santan kelapa. Proses pembuatan rendang memakan waktu yang cukup lama karena dagingnya harus dipanggang terlebih dahulu sebelum ditumis bersama bumbu-bumbunya hingga terbentuk kuah yang kental dan aromatik. Rendang memiliki rasa yang khas, gurih, dan pedas, dan sering disajikan bersama nasi putih sebagai hidangan utama.", price: 90000)
    ,
  Product(id: 16, name: "ribeye Meltique", desc: "Ribeye Meltique adalah daging sapi premium yang diproses dengan teknologi terbaru untuk menghasilkan tekstur yang lembut dan juicy. Daging ini dipilih dari bagian dada sapi yang terbaik dan diolah secara khusus untuk meningkatkan cita rasa dan aroma. Ribeye Meltique juga diberi perlakuan khusus untuk meningkatkan kelezatan dan menambah kekentalan daging, sehingga menghasilkan rasa yang luar biasa ketika dimasak. Daging ini cocok untuk dijadikan menu utama di acara spesial Anda.", price: 170000)
    ,
    Product(id: 17, name: "ribeye steak", desc: "Ribeye steak adalah jenis daging sapi yang diperoleh dari bagian dada sapi. Daging ini terkenal dengan teksturnya yang lembut dan rasanya yang juicy. Ribeye steak juga memiliki banyak lemak yang membuatnya terasa lezat dan menyenangkan saat dimakan. Daging ini cocok untuk diolah dengan cara dipanggang atau dibakar. Ribeye steak juga tersedia dalam berbagai ukuran, mulai dari yang kecil hingga yang besar. Daging ini sangat cocok untuk dinikmati bersama saus steak favorit anda.", price: 90000)
    ,
  Product(id: 18, name: "rump", desc: "Rump adalah jenis daging yang berasal dari bagian belakang sapi. Daging ini memiliki tekstur yang lembut dan juicy, serta rasa yang gurih dan lezat. Rump dipilih sebagai bahan dasar berbagai masakan seperti steak, sate, dan gulai. Daging ini juga banyak digunakan untuk membuat steak tartare. Dengan rasa yang lezat dan tekstur yang lembut, rump merupakan pilihan yang tepat untuk menyajikan hidangan lezat untuk keluarga dan teman-teman.", price: 60000)
    ,
  Product(id: 19, name: "saikoro meltique", desc: "Saikoro Meltique adalah jenis daging sapi yang dipotong kecil-kecil seperti cubitan dadu. Daging ini dipilih dari bahan baku sapi yang berkualitas terbaik dan diolah dengan teknik pengolahan tradisional Jepang yang membuatnya terasa lembut dan mudah dicerna. Saikoro Meltique sangat cocok untuk diolah menjadi berbagai macam masakan seperti steak, sate, atau bahkan dimasak bersama sayur-sayuran. Dengan teksturnya yang lembut dan rasanya yang gurih, Saikoro Meltique pasti akan menjadi favorit para pecinta daging sapi.", price: 100000)
    ,
  Product(id: 20, name: "semur", desc: "Semur adalah makanan khas Indonesia yang terbuat dari daging sapi yang dipotong-potong kecil, kemudian dimasak dengan bumbu-bumbu rempah seperti kecap, bawang merah, bawang putih, jahe, dan lain-lain. Daging yang digunakan biasanya merupakan daging yang lembut sehingga mudah untuk diolah menjadi semur yang lezat.\n\nSemur daging ini memiliki cita rasa yang kuat dan kaya akan rempah-rempah, sehingga membuatnya terasa sangat lezat. Rasa daging yang lembut dan bumbu yang kaya akan rempah ini akan membuat siapa saja yang mencicipinya akan ketagihan.\n\nSemur daging ini bisa dijadikan sebagai makanan utama ataupun sebagai pelengkap dari nasi goreng atau nasi putih. Selain itu, semur daging ini juga bisa disajikan bersama dengan sayur-sayuran segar seperti kangkung, bayam, atau buncis.\n\nJadi, jika Anda ingin menikmati makanan yang lezat dan kaya akan rempah, cobalah semur daging ini. Anda akan terkesan dengan rasa dan tekstur dari semur daging ini yang lezat dan nikmat.", price: 70000)
    ,
  Product(id: 21, name: "shortplateAUS", desc: "ShortplateAUS adalah daging premium yang dihasilkan dari sapi-sapi terbaik di Australia. Daging ini dipilih dan diolah dengan hati-hati untuk menghasilkan tekstur yang lembut dan rasa yang kaya. ShortplateAUS juga diperkaya dengan nutrisi yang baik untuk tubuh sehingga dapat memberikan manfaat kesehatan bagi konsumen. Daging ini cocok untuk diolah dengan berbagai macam masakan, mulai dari steak, burger, hingga soup. Dengan rasa yang nikmat dan kualitas yang terjamin, ShortplateAUS merupakan pilihan yang tepat untuk memenuhi kebutuhan daging berkualitas di rumah Anda.", price: 100000)
    ,
  Product(id: 22, name: "shortplateUS", desc: "Shortplate US adalah daging yang diperoleh dari bagian perut sapi. Daging ini memiliki tekstur yang lembut dan rasa yang gurih, sehingga cocok untuk diolah menjadi berbagai masakan. Daging ini juga memiliki kandungan protein yang tinggi, sehingga baik untuk dikonsumsi oleh semua usia. Shortplate US juga diproses secara higienis dan disegel dengan baik untuk menjaga kualitas dan kebersihannya.", price: 90000)
    ,
  Product(id: 23, name: "silverside", desc: "Silverside adalah salah satu jenis daging sapi yang terletak di bawah tulang belakang. Daging ini terkenal karena teksturnya yang lembut dan rasa yang lezat. Silverside juga memiliki kandungan protein yang tinggi sehingga cocok untuk dikonsumsi oleh orang yang ingin menjaga berat badan atau membangun massa otot. Daging ini juga mudah diolah menjadi berbagai macam masakan, seperti roast beef, pot roast, atau bahan dasar untuk sup. Silverside juga tersedia dalam berbagai ukuran dan bisa dibeli di toko-toko daging atau pasar tradisional.", price: 40000)
    ,
  Product(id: 24, name: "sirloin meltique", desc: "Sirloin meltique adalah daging yang terbuat dari daging sirloin yang dipotong tipis dan dibakar hingga matang. Daging ini memiliki tekstur yang lembut dan juicy, serta aroma yang khas dan gurih. Daging ini juga ditambahkan dengan saus meltique yang menambah citarasa unik dan lezat pada daging. Sirloin meltique cocok dinikmati bersama nasi putih hangat atau roti panggang.", price: 160000)
    ,
  Product(id: 25, name: "sirloin steak", desc: "Sirloin steak adalah jenis daging sapi yang berasal dari bagian dada atau punggung sapi. Daging ini memiliki tekstur yang lembut dan lezat, serta terkenal akan rasa yang kaya dan gurih. Sirloin steak juga memiliki tingkat lemak yang sedang, sehingga cocok untuk dikonsumsi oleh siapa saja yang mencari daging dengan kandungan lemak yang seimbang.", price: 160000)
    ,
  Product(id: 26, name: "steak", desc: "Steak adalah daging yang dipotong tebal dan dipanggang di atas api atau bara api. Steak biasanya terbuat dari daging sapi, namun juga bisa dari daging kambing, daging domba, atau bahkan daging ikan. Steak biasanya disajikan dengan garam, merica, dan bawang putih sebagai bumbu dasar, serta saus steak yang disajikan di atasnya. Steak juga bisa disajikan dengan berbagai sayuran segar sebagai pelengkap, seperti broccoli, paprika, atau buncis.", price: 80000)
    ,
  Product(id: 27, name: "tenderloin meltique", desc: "Tenderloin meltique adalah daging yang terbuat dari daging sapi tenderloin yang dipanggang dengan cara meltique, yaitu dengan dibakar hingga meleleh dan mengeluarkan jus yang lezat. Daging ini memiliki tekstur yang lembut dan juicy, serta rasa yang sedap dan lezat. Dipadukan dengan saus yang cocok, daging ini akan menjadi hidangan yang sempurna untuk dinikmati bersama keluarga atau teman-teman.", price: 250000)
    ,
    Product(id: 28, name: "tenderloin steak", desc: "Tenderloin steak adalah jenis daging yang diperoleh dari bagian pangkal punggung sapi. Daging ini terkenal dengan kehalusan dan lembutnya, sehingga mudah dicincang atau dibakar. Tenderloin steak juga memiliki tekstur yang lembut dan memiliki rasa yang lezat, sehingga cocok untuk diolah menjadi berbagai masakan. Daging ini juga kaya akan protein dan nutrisi yang dibutuhkan oleh tubuh.", price: 250000)
    ,
  Product(id: 29, name: "topside", desc: "Topside adalah jenis daging sapi yang berasal dari bagian atas paha. Daging ini memiliki tekstur yang lembut dan rasa yang sedikit manis. Topside juga memiliki kandungan protein yang tinggi sehingga cocok untuk dikonsumsi oleh semua usia. Daging ini bisa diolah menjadi berbagai macam masakan seperti steak, gulai, atau dibakar dengan bumbu yang lezat. Topside juga dapat dicuci dan dibekukan untuk menjaga kesegaran daging.", price: 75000)
]
