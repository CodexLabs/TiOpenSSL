/**
 * Your Copyright Here
 *
 * Appcelerator Titanium is Copyright (c) 2009-2010 by Appcelerator, Inc.
 * and licensed under the Apache Public License (version 2)
 */
#import "ComCodexlabsTiopensslModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"
#include <openssl/evp.h>


@implementation ComCodexlabsTiopensslModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"192533ac-ffb7-4bfc-a799-64a30ab3632b";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.codexlabs.tiopenssl";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
	
	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup 

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added 
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}


static void ToHex(const unsigned char* data, unsigned int length, char* buffer)
{
	static char hex[16] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
	for (unsigned i = 0; i < length; i++) {
		*buffer++ = hex[(data[i] & 0xf0) >> 4];
		*buffer++ = hex[(data[i] & 0x0f)];
	}
	*buffer = 0;
}


-(id)cryptoMessage:(NSString*)messageFromTitanium
{
    //probably a bad idea, but it demonstrates how to pass input into an objective c method.
    char message[] = "";
    message[0] = messageFromTitanium;
	return message[0];
 
}

@end
