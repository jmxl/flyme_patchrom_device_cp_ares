.class Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    .prologue
    .line 2868
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;->this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2871
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2870
    :goto_0
    return-void

    .line 2873
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;->this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->-get1(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 2874
    const-string/jumbo v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;->this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->-get1(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " minutes have gone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;->this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->-get1(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->-set2(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;I)I

    goto :goto_0

    .line 2877
    :cond_0
    const-string/jumbo v0, "GnssLocationProvider"

    const-string/jumbo v1, "one hour have gone, stop timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;->this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->-wrap0(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)V

    .line 2879
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;->this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->-get0(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->-set1(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;I)I

    .line 2880
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;->this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->-set0(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;Z)Z

    .line 2881
    const-string/jumbo v0, "GnssLocationProvider"

    .line 2882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage ==> sendGpsNotification() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2883
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;->this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->-get0(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)I

    move-result v2

    .line 2882
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2883
    const-string/jumbo v2, "times"

    .line 2882
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2881
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization$1;->this$1:Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;->-wrap1(Lcom/android/server/location/GnssLocationProvider$GpsNotificationOptimization;)V

    goto/16 :goto_0

    .line 2871
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
