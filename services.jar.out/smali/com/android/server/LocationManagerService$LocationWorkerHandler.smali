.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/LocationManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2717
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    .line 2718
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2717
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2723
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2722
    :cond_0
    :goto_0
    return-void

    .line 2725
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-wrap5(Lcom/android/server/LocationManagerService;)V

    goto :goto_0

    .line 2728
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v1, :cond_1

    :goto_1
    invoke-static {v4, v0, v1}, Lcom/android/server/LocationManagerService;->-wrap7(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 2732
    :sswitch_2
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "we have receive brocadcat_remove"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get10(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/server/LocationManagerService;->-wrap1(Lcom/android/server/LocationManagerService;Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2736
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "some error happen in remove all dirty listener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2740
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get11(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2743
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get11(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "entry$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2745
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 2749
    .local v2, "mTempReceiver":Lcom/android/server/LocationManagerService$Receiver;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2753
    :goto_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get10(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2754
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get7(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 2755
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, v2, Lcom/android/server/LocationManagerService$Receiver;->mLocRequest:Landroid/location/LocationRequest;

    iget v3, v2, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget v4, v2, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iget-object v5, v2, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/LocationManagerService;->-wrap9(Lcom/android/server/LocationManagerService;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    goto :goto_2

    .line 2750
    :catch_0
    move-exception v6

    .line 2751
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "YULONG_MSG_REDO_GPS_REQUEST,linkToDeath failed:"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2754
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 2759
    .end local v2    # "mTempReceiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get15(Lcom/android/server/LocationManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2760
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get11(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 2766
    .end local v8    # "entry$iterator":Ljava/util/Iterator;
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2767
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v3}, Lcom/android/server/LocationManagerService;->-get4(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/LocationManagerService;->-set1(Lcom/android/server/LocationManagerService;Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy;

    .line 2768
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->-set0(Lcom/android/server/LocationManagerService;Z)Z

    .line 2769
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "out china use mGeocodeProvider_google"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2773
    :sswitch_5
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2774
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v1}, Lcom/android/server/LocationManagerService;->-get3(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->-set1(Lcom/android/server/LocationManagerService;Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy;

    .line 2775
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-static {v0, v3}, Lcom/android/server/LocationManagerService;->-set0(Lcom/android/server/LocationManagerService;Z)Z

    .line 2776
    const-string/jumbo v0, "LocationManagerService"

    const-string/jumbo v1, "in china use mGeocodeProvider_amap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2723
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_5
        0x67 -> :sswitch_4
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
