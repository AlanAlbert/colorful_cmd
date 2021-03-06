part of utils;

const Map<String, String> ALPHA_MAPPING = {
  // blank
  ' ': '''

      
      
      
      
      
      
      
''',
  'A': '''

 █████╗ 
██╔══██╗
███████║
██╔══██║
██║  ██║
╚═╝  ╚═╝
        
''',
  'B': '''

██████╗ 
██╔══██╗
██████╔╝
██╔══██╗
██████╔╝
╚═════╝ 
        
''',
  'C': '''

 ██████╗
██╔════╝
██║     
██║     
╚██████╗
 ╚═════╝
        
''',
  'D': '''

██████╗ 
██╔══██╗
██║  ██║
██║  ██║
██████╔╝
╚═════╝ 
        
''',
  'E': '''

███████╗
██╔════╝
█████╗  
██╔══╝  
███████╗
╚══════╝
        
''',
  'F': '''

███████╗
██╔════╝
█████╗  
██╔══╝  
██║     
╚═╝     
        
''',
  'G': '''

 ██████╗ 
██╔════╝ 
██║  ███╗
██║   ██║
╚██████╔╝
 ╚═════╝ 
        
''',
  'H': '''

██╗  ██╗
██║  ██║
███████║
██╔══██║
██║  ██║
╚═╝  ╚═╝
        
''',
  'I': '''

██╗
██║
██║
██║
██║
╚═╝
   
''',
  'J': '''

     ██╗
     ██║
     ██║
██   ██║
╚█████╔╝
 ╚════╝ 
        
''',
  'K': '''

██╗  ██╗
██║ ██╔╝
█████╔╝ 
██╔═██╗ 
██║  ██╗
╚═╝  ╚═╝
        
''',
  'L': '''

██╗     
██║     
██║     
██║     
███████╗
╚══════╝
        
''',
  'M': '''

███╗   ███╗
████╗ ████║
██╔████╔██║
██║╚██╔╝██║
██║ ╚═╝ ██║
╚═╝     ╚═╝
           
''',
  'N': '''

███╗   ██╗
████╗  ██║
██╔██╗ ██║
██║╚██╗██║
██║ ╚████║
╚═╝  ╚═══╝
          
''',
  'O': '''

 ██████╗ 
██╔═══██╗
██║   ██║
██║   ██║
╚██████╔╝
 ╚═════╝ 
         
''',
  'P': '''

██████╗ 
██╔══██╗
██████╔╝
██╔═══╝ 
██║     
╚═╝     
        
''',
  'Q': '''

 ██████╗ 
██╔═══██╗
██║   ██║
██║▄▄ ██║
╚██████╔╝
 ╚══▀▀═╝ 
         
''',
  'R': '''

██████╗ 
██╔══██╗
██████╔╝
██╔══██╗
██║  ██║
╚═╝  ╚═╝
        
''',
  'S': '''

███████╗
██╔════╝
███████╗
╚════██║
███████║
╚══════╝
        
''',
  'T': '''

████████╗
╚══██╔══╝
   ██║   
   ██║   
   ██║   
   ╚═╝   
         
''',
  'U': '''

██╗   ██╗
██║   ██║
██║   ██║
██║   ██║
╚██████╔╝
 ╚═════╝ 
         
''',
  'V': '''

██╗   ██╗
██║   ██║
██║   ██║
╚██╗ ██╔╝
 ╚████╔╝ 
  ╚═══╝  
         
''',
  'W': '''

██╗    ██╗
██║    ██║
██║ █╗ ██║
██║███╗██║
╚███╔███╔╝
 ╚══╝╚══╝ 
          
''',
  'X': '''

██╗  ██╗
╚██╗██╔╝
 ╚███╔╝ 
 ██╔██╗ 
██╔╝ ██╗
╚═╝  ╚═╝
        
''',
  'Y': '''

██╗   ██╗
╚██╗ ██╔╝
 ╚████╔╝ 
  ╚██╔╝  
   ██║   
   ╚═╝   
         
''',
  'Z': '''

███████╗
╚══███╔╝
  ███╔╝ 
 ███╔╝  
███████╗
╚══════╝
        
''',
  '0': '''

 ██████╗ 
██╔═████╗
██║██╔██║
████╔╝██║
╚██████╔╝
 ╚═════╝ 
         
''',
  '1': '''

 ██╗
███║
╚██║
 ██║
 ██║
 ╚═╝
    
''',
  '2': '''

██████╗ 
╚════██╗
 █████╔╝
██╔═══╝ 
███████╗
╚══════╝
        
''',
  '3': '''

██████╗ 
╚════██╗
 █████╔╝
 ╚═══██╗
██████╔╝
╚═════╝ 
        
''',
  '4': '''

██╗  ██╗
██║  ██║
███████║
╚════██║
     ██║
     ╚═╝
        
''',
  '5': '''

███████╗
██╔════╝
███████╗
╚════██║
███████║
╚══════╝
        
''',
  '6': '''

 ██████╗ 
██╔════╝ 
███████╗ 
██╔═══██╗
╚██████╔╝
 ╚═════╝ 
         
''',
  '7': '''

███████╗
╚════██║
    ██╔╝
   ██╔╝ 
   ██║  
   ╚═╝  
        
''',
  '8': '''

 █████╗ 
██╔══██╗
╚█████╔╝
██╔══██╗
╚█████╔╝
 ╚════╝ 
        
''',
  '9': '''

 █████╗ 
██╔══██╗
╚██████║
 ╚═══██║
 █████╔╝
 ╚════╝ 
        
''',
  '!': '''

██╗
██║
██║
╚═╝
██╗
╚═╝
   
''',
  '@': '''

 ██████╗ 
██╔═══██╗
██║██╗██║
██║██║██║
╚█║████╔╝
 ╚╝╚═══╝ 
         
''',
  '#': '''

 ██╗ ██╗ 
████████╗
╚██╔═██╔╝
████████╗
╚██╔═██╔╝
 ╚═╝ ╚═╝ 
         
''',
  '\$': '''

▄▄███▄▄·
██╔════╝
███████╗
╚════██║
███████║
╚═▀▀▀══╝
        
''',
  '%': '''

██╗ ██╗
╚═╝██╔╝
  ██╔╝ 
 ██╔╝  
██╔╝██╗
╚═╝ ╚═╝
       
''',
  '^': '''

 ███╗ 
██╔██╗
╚═╝╚═╝
      
      
      
      
''',
  '&': '''

   ██╗   
   ██║   
████████╗
██╔═██╔═╝
██████║  
╚═════╝  
         
''',
  '*': '''

      
▄ ██╗▄
 ████╗
▀╚██╔▀
  ╚═╝ 
      
      
''',
  '(': '''

 ██╗
██╔╝
██║ 
██║ 
╚██╗
 ╚═╝
    
''',
  ')': '''

██╗ 
╚██╗
 ██║
 ██║
██╔╝
╚═╝ 
    
''',
  '-': '''

      
      
█████╗
╚════╝
      
      
      
''',
  '_': '''

        
        
        
        
███████╗
╚══════╝
        
''',
  '[': '''

███╗
██╔╝
██║ 
██║ 
███╗
╚══╝
    
''',
  ']': '''

███╗
╚██║
 ██║
 ██║
███║
╚══╝
    
''',
  ';': '''

   
██╗
╚═╝
▄█╗
▀═╝
   
   
''',
  ':': '''

   
██╗
╚═╝
██╗
╚═╝
   
   
''',
  ',': '''

   
   
   
   
▄█╗
╚═╝
   
''',
  '.': '''

   
   
   
   
██╗
╚═╝
   
''',
  '<': '''

  ██╗
 ██╔╝
██╔╝ 
╚██╗ 
 ╚██╗
  ╚═╝
     
''',
  '>': '''

██╗  
╚██╗ 
 ╚██╗
 ██╔╝
██╔╝ 
╚═╝  
     
''',
  '?': '''

██████╗ 
╚════██╗
  ▄███╔╝
  ▀▀══╝ 
  ██╗   
  ╚═╝   
        
''',
  '/': '''

    ██╗
   ██╔╝
  ██╔╝ 
 ██╔╝  
██╔╝   
╚═╝    
       
''',
};

String formatChars(String str) {
  var chars = str.toUpperCase().split('');
  var format = chars.map((item) {
    var char = '';
    if (ALPHA_MAPPING.containsKey(item)) {
      char = ALPHA_MAPPING[item];
    }
    return char.split('\n');
  });

  var lines = [];
  for (var i = 0; i < 8; i++) {
    var line = '';
    for (var item in format) {
      if (item.length - 1 <= i) continue;
      line = '$line ${item[i]}';
    }
    lines.add(line);
  }

  return lines.join('\n');
}
