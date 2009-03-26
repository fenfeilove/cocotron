/* Copyright (c) 2006-2007 Christopher J. W. Lloyd

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. */
#import <AppKit/CGWindow.h>

@implementation CGWindow

-(void)setDelegate:delegate {
   NSInvalidAbstractInvocation();
}

-delegate {
   NSInvalidAbstractInvocation();
   return nil;
}

-(void)invalidate {
   NSInvalidAbstractInvocation();
}


-(KGContext *)cgContext {
   NSInvalidAbstractInvocation();
   return nil;
}


-(void)setTitle:(NSString *)title {
   NSInvalidAbstractInvocation();
}

-(void)setFrame:(NSRect)frame {
   NSInvalidAbstractInvocation();
}


-(void)showWindowForAppActivation:(NSRect)frame {
   NSInvalidAbstractInvocation();
}

-(void)hideWindowForAppDeactivation:(NSRect)frame {
   NSInvalidAbstractInvocation();
}

-(void)showWindowWithoutActivation {
   NSInvalidAbstractInvocation();
}

-(void)hideWindow {
   NSInvalidAbstractInvocation();
}


-(void)placeAboveWindow:(CGWindow *)other {
   NSInvalidAbstractInvocation();
}

-(void)placeBelowWindow:(CGWindow *)other {
   NSInvalidAbstractInvocation();
}


-(void)makeKey {
   NSInvalidAbstractInvocation();
}

-(void)captureEvents {
   NSInvalidAbstractInvocation();
}

-(void)miniaturize {
   NSInvalidAbstractInvocation();
}

-(void)deminiaturize {
   NSInvalidAbstractInvocation();
}

-(BOOL)isMiniaturized {
   NSInvalidAbstractInvocation();
   return NO;
}

-(void)flushBuffer {
   NSInvalidAbstractInvocation();
}


-(NSPoint)mouseLocationOutsideOfEventStream {
   NSInvalidAbstractInvocation();
   return NSZeroPoint;
}


-(void)sendEvent:(CGEvent *)event {
   NSInvalidAbstractInvocation();
}

-(void)addEntriesToDeviceDictionary:(NSDictionary *)entries {
   NSInvalidAbstractInvocation();
}

@end
