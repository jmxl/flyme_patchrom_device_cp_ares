.class final synthetic Lcom/android/server/am/BatteryStatsService$-void_shutdown__LambdaImpl0;
.super Ljava/lang/Object;
.source "BatteryStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_shutdown__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$-void_shutdown__LambdaImpl0;->val$this:Lcom/android/server/am/BatteryStatsService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$-void_shutdown__LambdaImpl0;->val$this:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->-com_android_server_am_BatteryStatsService_lambda$1()V

    return-void
.end method
