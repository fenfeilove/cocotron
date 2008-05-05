/*------------------------------------------------------------------------
 *
 * Derivative of the OpenVG 1.0.1 Reference Implementation
 * -------------------------------------
 *
 * Copyright (c) 2007 The Khronos Group Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and /or associated documentation files
 * (the "Materials "), to deal in the Materials without restriction,
 * including without limitation the rights to use, copy, modify, merge,
 * publish, distribute, sublicense, and/or sell copies of the Materials,
 * and to permit persons to whom the Materials are furnished to do so,
 * subject to the following conditions: 
 *
 * The above copyright notice and this permission notice shall be included 
 * in all copies or substantial portions of the Materials. 
 *
 * THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
 * DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
 * OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE MATERIALS OR
 * THE USE OR OTHER DEALINGS IN THE MATERIALS.
 *
 *-------------------------------------------------------------------*/
#import "KGPaint_color.h"
#import "KGSurface.h"

@implementation KGPaint_color

static VGColorInternalFormat KGPaintReadPremultipliedConstantSourceSpan(KGPaint_color *self,int x,int y,KGRGBAffff *span,int length){
   KGRGBAffff  rgba=KGRGBAffffFromColor(self->m_paintColor);
   int i;
   
   for(i=0;i<length;i++)
    span[i]=rgba;
    
   return self->m_paintColor.m_format;
}

-initWithGray:(CGFloat)gray alpha:(CGFloat)alpha {
   KGPaintInit(self);
   _readRGBAffff=(KGPaintReadSpan_RGBAffff)KGPaintReadPremultipliedConstantSourceSpan;
   m_paintColor=VGColorRGBA(gray,gray,gray,alpha,VGColor_lRGBA);
   m_paintColor=VGColorClamp(m_paintColor);
   m_paintColor=VGColorPremultiply(m_paintColor);
   return self;
}

-initWithRed:(CGFloat)red green:(CGFloat)green blue:(CGFloat)blue alpha:(CGFloat)alpha {
   KGPaintInit(self);
   _readRGBAffff=(KGPaintReadSpan_RGBAffff)KGPaintReadPremultipliedConstantSourceSpan;
   m_paintColor=VGColorRGBA(red,green,blue,alpha,VGColor_lRGBA);
   m_paintColor=VGColorClamp(m_paintColor);
   m_paintColor=VGColorPremultiply(m_paintColor);
   return self;
}

@end