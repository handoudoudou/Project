//
//  main.m
//  9.19
//
//  Created by whatever on 16/9/19.
//  Copyright © 2016年 handd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#include <mach/mach.h>

BOOL memoryInfo(vm_statistics_data_t *vmStats) {
    mach_msg_type_number_t infoCount = HOST_VM_INFO_COUNT;
    kern_return_t kernReturn = host_statistics(mach_host_self(), HOST_VM_INFO, (host_info_t)vmStats, &infoCount);
    
    return kernReturn == KERN_SUCCESS;
}

void logMemoryInfo() {
    vm_statistics_data_t vmStats;
    
    if (memoryInfo(&vmStats)) {
        NSLog(@"free: %fM\nactive: %fM\ninactive: %fM\nwire: %fM\nzero fill: %lu\nreactivations: %lu\npageins: %lu\npageouts: %lu\nfaults: %u\ncow_faults: %u\nlookups: %u\nhits: %u",
              vmStats.free_count * vm_page_size/1024.0/1024.0,
              vmStats.active_count * vm_page_size/1024.0/1024.0,
              vmStats.inactive_count * vm_page_size/1024.0/1024.0,
              vmStats.wire_count * vm_page_size/1024.0/1024.0,
              vmStats.zero_fill_count * vm_page_size,
              vmStats.reactivations * vm_page_size,
              vmStats.pageins * vm_page_size,
              vmStats.pageouts * vm_page_size,
              vmStats.faults,
              vmStats.cow_faults,
              vmStats.lookups,
              vmStats.hits
              );
    }
}

int main(int argc, char * argv[]) {
    @autoreleasepool {
        logMemoryInfo();
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
