from PyPDF2 import PdfFileReader, PdfFileWriter
from sys import argv

def main():
    if len(argv) != 4:
        exit("Usage: python3 collate_PDFs.py first_block.pdf second_block.pdf save_name.pdf")

    collatePDF(argv[1],argv[2],argv[3])

def collatePDF(pathA,pathB,outName):

    docA = PdfFileReader(pathA)
    docB = PdfFileReader(pathB)

    N = docA.getNumPages()
    
    if N != docB.getNumPages():
        exit("Usage: Input documents must have same number of pages")

    pdfWrite = PdfFileWriter()

    for page in range(N):
        pdfWrite.addPage(docA.getPage(page))
        pdfWrite.addPage(docB.getPage(N-page-1))
    
    # Output file. 'wb' argument is for write binary
    out = open(outName,'wb')
    pdfWrite.write(out)    

# Who knows, maybe someone will call this as a module...
if __name__ == '__main__':
    main()