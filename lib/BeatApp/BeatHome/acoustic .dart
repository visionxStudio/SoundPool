import 'package:flutter/material.dart';
import 'package:soundpool/soundpool.dart';

import 'components/instrumentsUrl.dart';

class Acoustic extends StatefulWidget {
  @override
  _AcousticState createState() => _AcousticState();
}

class _AcousticState extends State<Acoustic> {
  Soundpool _soundpool;
  void initState() {
    super.initState();
    _loadSounds();
  }

  double _rate = 1.0;

  Future<int> _kickId;
  Future<int> _closedHitHatId;

  Future<int> _snareId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            primary: false,
            children: [
              GestureDetector(
                onTap: () {
                  _playKick();
                },
                child: Card(
                  child: Image.network(
                    "https://static.thenounproject.com/png/118259-200.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _playSnare();
                },
                child: Card(
                  child: Image.network(
                    "https://www.pinclipart.com/picdir/big/74-744298_snare-drum-top-icon-warhammer-40k-adeptus-mechanicus.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _playHitHatClosed();
                },
                child: Card(
                  child: Image.network(
                    "https://image.flaticon.com/icons/png/512/92/92992.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<int> _loadKick() async {
    return await _soundpool.loadUri(kickUrl);
  }

  Future<int> _loadSnare() async {
    return await _soundpool.loadUri(snareUrl);
  }

  Future<int> _loadHitHatClosed() async {
    return await _soundpool.loadUri(closedHitHat);
  }

  Future<void> _playKick() async {
    var _sound = await _kickId;
    await _soundpool.play(
      _sound,
      rate: _rate,
    );
  }

  Future<void> _playSnare() async {
    var _sound = await _snareId;
    await _soundpool.play(
      _sound,
      rate: _rate,
    );
  }

  Future<void> _playHitHatClosed() async {
    var _sound = await _closedHitHatId;
    await _soundpool.play(
      _sound,
      rate: _rate,
    );
  }

  Future<void> _loadSounds() async {
    _soundpool ??= Soundpool();
    _kickId = _loadKick();
    _closedHitHatId = _loadHitHatClosed();
    _snareId = _loadSnare();
  }

  Future<void> _disposePool() async {
    _soundpool.dispose();
  }
}
