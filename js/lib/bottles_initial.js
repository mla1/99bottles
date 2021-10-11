import { capitalize, downTo } from './helpers';

class Bottles {
  constructor() {
  }

  song() {
    return this.verses(99,0);
  }

  verses(upper, lower) {
    let r = [];
    for (let i = upper; i >= lower; i--) {
      r.push(this.verse(i));
    }

    return r.join('\n');
  }

  verse(number) {
    switch (number) {
      case 0:
        return `No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n`;
      case 1:
        return `${number} bottle of beer on the wall, ${number} bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n`;
      case 2:
        return `${number} bottles of beer on the wall, ${number} bottles of beer.\nTake one down and pass it around, ${number-1} bottle of beer on the wall.\n`;
      default:
        return `${number} bottles of beer on the wall, ${number} bottles of beer.\nTake one down and pass it around, ${number-1} bottles of beer on the wall.\n`;
    }
  }
}

export { Bottles };
