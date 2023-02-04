// ignore_for_file: file_names

import 'package:flutter/material.dart';

class OriginalLIstClass extends StatelessWidget {
  const OriginalLIstClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('OriginalLIstClass'),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              OriginalLIst(item: data[index]),
          itemCount: data.length,
        ));
  }
}

class OriginalLIst extends StatefulWidget {
  const OriginalLIst({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ListData item;

  @override
  State<OriginalLIst> createState() => _OriginalLIst();
}

class _OriginalLIst extends State<OriginalLIst> with TickerProviderStateMixin {

  Container open(String text) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }

  final close = Container(
    height: 0,
    width: double.infinity,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            //画像表示（画面幅いっぱいに）
            height: 100,
            width: double.infinity,
            color: Colors.white,
            child: Image.network(widget.item.imageUrl),
          ),
          Container(
            //タイトル部分
            width: double.infinity,
            color: Colors.white,
            child: Text(
              widget.item.title,
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Container(
            //説明部分（アニメーションで開閉処理を行う。）
            color: Colors.white,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  widget.item.isShow = !widget.item.isShow;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: double.infinity,
                color: Colors.white,
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    widget.item.isShow == true ? "閉じる" : "開く",
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: open(widget.item.info),
            secondChild: close,
            duration: const Duration(seconds: 1),
            crossFadeState:
            widget.item.isShow ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
        ],
      ),
    );
  }
}

//リストに表示するデータクラス
class ListData {
  String title;
  String imageUrl;
  String info;
  bool isShow;

  ListData(this.title, this.imageUrl, this.info,this.isShow);
}

final List<ListData> data = <ListData>[
  ListData(
      'タイトルA',
      'https://1.bp.blogspot.com/-T8tpkKm4Wbc/X68aa6FdIuI/AAAAAAABcP0/nEmdFPU_rocULy103P5yAfclpYNDYNUKACNcBGAsYHQ/s400/youtuber_mask_sunglass.png',
      'サンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルAサンプルA',false),
  ListData(
      'タイトルB',
      'https://1.bp.blogspot.com/-ihIdjfUxk6g/X7zMIJVu3TI/AAAAAAABcYk/Uc_8clONCqEeN-VMnIY74ItJiHIEu2BTQCNcBGAsYHQ/s180-c/job_chocolatier_man.png',
      'サンプルBサンプルBサンプルB',false),
  ListData(
      'タイトルC',
      'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjhI1i2I94_qh8E2Y4uNfZEistKAkO8mJ8fRFhSXCKjDXArUIbQQCagB9zzv_11YLAfHgWSgI5wR4VlVIl8DM_KX3V3FtUZrYHpzdpInE4bhdCLOWLZ6I-lfvAzLuBJ7yI_4l832xxRlpcKR4R-_yktOdh3DiEcW3xdWrpU7NPOcI_QUDUe4Dsu6Jl6ag/s180-c/keibi_genkin_yusou.png',
      'サンプルCサンプルC',false),
  ListData(
      'タイトルD',
      'https://1.bp.blogspot.com/-kp1_EB0_mTc/X3SJ661TufI/AAAAAAABbjQ/EmT2twSSDCQPsNS7qlpDsn2Fzr72TOGbACNcBGAsYHQ/s180-c/bar_shaker_man.png',
      'サンプルDサンプルDサンプルDサンプルD',false),
  ListData(
      'タイトルE',
      'https://1.bp.blogspot.com/-B-I_lDyFiCw/XxU0hGehYaI/AAAAAAABaMU/ozHCE-qdYJkcbz1wVaKs6h72jyqTi0sBQCNcBGAsYHQ/s180-c/hotel_front_woman.png',
      'サンプルE',false),
  ListData(
      'タイトルF',
      'https://1.bp.blogspot.com/-DooJtcp8xS8/XvcI0uI_7lI/AAAAAAABZso/zeGjsiaGp1ci7MFCaYRhQkxJZ8qblbqOgCNcBGAsYHQ/s180-c/jinrikisya_man_face_shield.png',
      'サンプルFサンプルFサンプルFサンプルFサンプルFサンプルF',false),
  ListData(
      'タイトルG',
      'https://1.bp.blogspot.com/-Tk6O2ne3XbI/Xtt6icgq3WI/AAAAAAABZRU/MAxy4N6fTmIWjBqDVRHg6V2bq8gDY2P9ACNcBGAsYHQ/s180-c/nebusoku_doctor_man.png',
      'サンプサンプルGサンプルGサンプルGサンプルGサンプルGサンプルGサンプルGサンプルGルG',false),
  ListData(
      'タイトルH',
      'https://1.bp.blogspot.com/-isX0WD87Lvs/XobTC4Ti6eI/AAAAAAABYD8/Yg8JHj0DQ5wzbHeFIiDclTrPugseaBNNQCNcBGAsYHQ/s180-c/edo_syounin.png',
      'サンプルHサンプルH',false),
  ListData(
      'タイトルI',
      'https://1.bp.blogspot.com/-R-_bISNCQq0/Xlyf1ghT_pI/AAAAAAABXp0/fSzHRjqo9EQD4OjbW03MKdrF1Hml27CuACNcBGAsYHQ/s180-c/job_cooking_agemono.png',
      'サンプルIサンプルIサンプルIサンプルIサンプルI',false),
  ListData(
      'タイトルJ',
      'https://1.bp.blogspot.com/-8_l_PiLfpLM/Xexql96D-6I/AAAAAAABWhI/sraryavz1Og3RznKXkux8Rf1MEcg1hZbACNcBGAsYHQ/s180-c/job_sakaya_man.png',
      'サンプルJサンプルJサンプルJサンプルJサンプルJサンプルJサンプルJサンプルJサンプルJサンプルJサンプルJ',false),
  ListData(
      'タイトルK',
      'https://1.bp.blogspot.com/-YpxcVeA_Pl8/XTPoZK6E30I/AAAAAAABTyc/nRquAxOYXWIvDob9YHwsg0rCZzxFdeASQCLcBGAs/s180-c/kouji_yane_syuuri.png',
      'サンプルKサンプルKサンプルKサンプルK',false),
  ListData(
      'タイトルL',
      'https://1.bp.blogspot.com/-qGUqWU8SGAs/XQjuKanp1LI/AAAAAAABTPo/jH4qfSAk2BwdbBHelU_axIqBXFD_6vSzwCLcBGAs/s180-c/job_sokki_man.png',
      'サンプルLサンプルLサンプルL',false),
  ListData(
      'タイトルM',
      'https://3.bp.blogspot.com/-TSZ70bL0oDA/XJB5UbIx6RI/AAAAAAABR-E/XOt8gTg7--Qw5uShcNZTGoIj3acqgaplACLcBGAs/s180-c/shop_tenin_tokei.png',
      'サンプルM',false),
];
