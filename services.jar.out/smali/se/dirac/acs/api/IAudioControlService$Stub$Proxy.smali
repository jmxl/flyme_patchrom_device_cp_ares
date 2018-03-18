.class Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAudioControlService.java"

# interfaces
.implements Lse/dirac/acs/api/IAudioControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/IAudioControlService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 256
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteDevice(J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "se.dirac.acs.api.IAudioControlService"

    .line 456
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 458
    iget-object v3, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 459
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 460
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 463
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 460
    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    .line 463
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getCurrentOutputSettings(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "se.dirac.acs.api.IAudioControlService"

    .line 482
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 488
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    :goto_0
    iget-object v3, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 491
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 492
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 500
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 503
    return-object v0

    :cond_0
    const/4 v3, 0x1

    .line 484
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    .line 485
    invoke-virtual {p1, v1, v3}, Lse/dirac/acs/api/Output;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 502
    :catchall_0
    move-exception v0

    .line 500
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 493
    :cond_1
    :try_start_2
    sget-object v0, Lse/dirac/acs/api/OutputSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/OutputSettings;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getCurrentRouting()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 612
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 614
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 615
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 618
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 621
    return v0

    .line 620
    :catchall_0
    move-exception v0

    .line 618
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 619
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getDevice(JLjava/lang/String;)Lse/dirac/acs/api/Device;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 277
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 281
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 282
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 290
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    return-object v0

    .line 283
    :cond_0
    :try_start_1
    sget-object v0, Lse/dirac/acs/api/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    .line 290
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getDeviceByProductID(Ljava/lang/String;Ljava/lang/String;)Lse/dirac/acs/api/Device;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 308
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 312
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 313
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 321
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 324
    return-object v0

    .line 314
    :cond_0
    :try_start_1
    sget-object v0, Lse/dirac/acs/api/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    .line 321
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getDeviceVendorData(J)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 370
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 372
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 373
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 374
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 377
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    return-object v0

    .line 379
    :catchall_0
    move-exception v0

    .line 377
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 664
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 666
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 667
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 670
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 673
    return-object v0

    .line 672
    :catchall_0
    move-exception v0

    .line 670
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 263
    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 564
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 566
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 567
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 570
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 573
    return-object v0

    .line 572
    :catchall_0
    move-exception v0

    .line 570
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public listDevices(Ljava/lang/String;Lse/dirac/acs/api/Output;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lse/dirac/acs/api/Output;",
            ")",
            "Ljava/util/List",
            "<",
            "Lse/dirac/acs/api/Device;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 339
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 346
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    :goto_0
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 349
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 350
    sget-object v0, Lse/dirac/acs/api/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 353
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 342
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p2, v1, v0}, Lse/dirac/acs/api/Output;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    .line 353
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public registerCallback(Lse/dirac/acs/api/IAudioControlServiceCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 625
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "se.dirac.acs.api.IAudioControlService"

    .line 628
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 629
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 630
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 631
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 637
    return-void

    .line 629
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lse/dirac/acs/api/IAudioControlServiceCallback;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 636
    :catchall_0
    move-exception v0

    .line 634
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public requestSync()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 542
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 544
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 545
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 548
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    return v0

    .line 550
    :catchall_0
    move-exception v0

    .line 548
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setDisabled(Lse/dirac/acs/api/Output;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 425
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 431
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    :goto_0
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 434
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 440
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 427
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p1, v1, v0}, Lse/dirac/acs/api/Output;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    .line 437
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public setOutput(Lse/dirac/acs/api/OutputSettings;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string/jumbo v4, "se.dirac.acs.api.IAudioControlService"

    .line 397
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 398
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 403
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    :goto_0
    iget-object v4, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 406
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 407
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 410
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 413
    return v0

    :cond_0
    const/4 v4, 0x1

    .line 399
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    .line 400
    invoke-virtual {p1, v2, v4}, Lse/dirac/acs/api/OutputSettings;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    .line 410
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 411
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_1
    move v0, v1

    .line 407
    goto :goto_1
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "se.dirac.acs.api.IAudioControlService"

    .line 587
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    iget-object v3, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 591
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 592
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 595
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 598
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 592
    goto :goto_0

    .line 597
    :catchall_0
    move-exception v0

    .line 595
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public unregisterCallback(Lse/dirac/acs/api/IAudioControlServiceCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "se.dirac.acs.api.IAudioControlService"

    .line 643
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 644
    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 645
    iget-object v0, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 646
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    return-void

    .line 644
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lse/dirac/acs/api/IAudioControlServiceCallback;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 651
    :catchall_0
    move-exception v0

    .line 649
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 650
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public userHasLicense(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string/jumbo v3, "se.dirac.acs.api.IAudioControlService"

    .line 516
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 518
    iget-object v3, p0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 519
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 520
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 523
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 526
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 520
    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    .line 523
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
