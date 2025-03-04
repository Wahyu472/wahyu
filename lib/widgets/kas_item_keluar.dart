import 'package:flutter/material.dart';
import 'package:kas_personal/models/kas.dart';

class KasItemKeluar extends StatelessWidget {
  const KasItemKeluar({super.key, required this.kas, required this.onTap});

  final Kas kas;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Builder(
        builder: (context) {
          var color = Colors.grey;
          var icon = Icons.add;
          if (kas.jenis == JenisKas.kasKeluar) {
            color = Colors.red;
            icon = Icons.remove;
          }
          return Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadiusDirectional.circular(50),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          );
        },
      ),
      title: Text(
        "IDR " + kas.nominal.round().toString(),
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(kas.keterangan),
    );
  }
}
