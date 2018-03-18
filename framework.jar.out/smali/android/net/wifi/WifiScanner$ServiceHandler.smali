.class Landroid/net/wifi/WifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiScanner;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiScanner;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1360
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    .line 1361
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1360
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 1365
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1377
    :pswitch_0
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap0(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    move-result-object v0

    .line 1379
    .local v0, "listener":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1381
    return-void

    .line 1367
    .end local v0    # "listener":Ljava/lang/Object;
    :pswitch_1
    return-void

    .line 1369
    :pswitch_2
    const-string/jumbo v3, "WifiScanner"

    const-string/jumbo v4, "Channel connection lost"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    invoke-static {v3, v5}, Landroid/net/wifi/WifiScanner;->-set0(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1373
    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 1374
    return-void

    .line 1386
    .restart local v0    # "listener":Ljava/lang/Object;
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1

    .line 1434
    :pswitch_3
    return-void

    .line 1389
    :pswitch_4
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/net/wifi/WifiScanner$ActionListener;->onSuccess()V

    .line 1364
    :goto_0
    return-void

    .line 1392
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$OperationResult;

    .line 1393
    .local v2, "result":Landroid/net/wifi/WifiScanner$OperationResult;
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget v3, v2, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    iget-object v4, v2, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    .line 1394
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap1(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    goto :goto_0

    .line 1398
    .end local v2    # "result":Landroid/net/wifi/WifiScanner$OperationResult;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_6
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .line 1399
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanData;->getResults()[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v3

    .line 1398
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    .line 1400
    return-void

    .line 1402
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1403
    .local v1, "result":Landroid/net/wifi/ScanResult;
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .end local v0    # "listener":Ljava/lang/Object;
    invoke-interface {v0, v1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    .line 1404
    return-void

    .line 1406
    .end local v1    # "result":Landroid/net/wifi/ScanResult;
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_8
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    .end local v0    # "listener":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onPeriodChanged(I)V

    .line 1407
    return-void

    .line 1409
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_9
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    .line 1410
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 1409
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onFound([Landroid/net/wifi/ScanResult;)V

    .line 1411
    return-void

    .line 1413
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_a
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    .line 1414
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 1413
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onLost([Landroid/net/wifi/ScanResult;)V

    .line 1415
    return-void

    .line 1417
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_b
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .line 1418
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 1417
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onChanging([Landroid/net/wifi/ScanResult;)V

    .line 1419
    return-void

    .line 1421
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_c
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    .line 1422
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 1421
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onQuiescence([Landroid/net/wifi/ScanResult;)V

    .line 1423
    return-void

    .line 1426
    .restart local v0    # "listener":Ljava/lang/Object;
    :pswitch_d
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap1(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    goto :goto_0

    .line 1429
    :pswitch_e
    check-cast v0, Landroid/net/wifi/WifiScanner$PnoScanListener;

    .line 1430
    .end local v0    # "listener":Ljava/lang/Object;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    .line 1429
    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$PnoScanListener;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    .line 1431
    return-void

    .line 1365
    nop

    :pswitch_data_0
    .packed-switch 0x11002
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1386
    :pswitch_data_1
    .packed-switch 0x27005
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_d
        :pswitch_3
        :pswitch_3
        :pswitch_e
    .end packed-switch
.end method
