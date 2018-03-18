.class public abstract Lcom/zeusis/touchframe/ITouchFrameService$Stub;
.super Landroid/os/Binder;
.source "ITouchFrameService.java"

# interfaces
.implements Lcom/zeusis/touchframe/ITouchFrameService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/touchframe/ITouchFrameService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/touchframe/ITouchFrameService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.zeusis.touchframe.ITouchFrameService"

.field static final TRANSACTION_addScreenshotListener:I = 0x7

.field static final TRANSACTION_addThumbListener:I = 0x5

.field static final TRANSACTION_disable:I = 0x2

.field static final TRANSACTION_removeScreenshotListener:I = 0x8

.field static final TRANSACTION_removeThumbListener:I = 0x6

.field static final TRANSACTION_setKeyMode:I = 0x3

.field static final TRANSACTION_setLocked:I = 0x1

.field static final TRANSACTION_setOpenPaymentMenuSwith:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.zeusis.touchframe.ITouchFrameService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/zeusis/touchframe/ITouchFrameService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "com.zeusis.touchframe.ITouchFrameService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/zeusis/touchframe/ITouchFrameService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/zeusis/touchframe/ITouchFrameService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/zeusis/touchframe/ITouchFrameService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/zeusis/touchframe/ITouchFrameService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 45
    :sswitch_0
    const-string/jumbo v5, "com.zeusis.touchframe.ITouchFrameService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v4

    .line 50
    :sswitch_1
    const-string/jumbo v5, "com.zeusis.touchframe.ITouchFrameService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 53
    .local v3, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v3}, Lcom/zeusis/touchframe/ITouchFrameService$Stub;->setLocked(Z)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    return v4

    .line 59
    .end local v3    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v5, "com.zeusis.touchframe.ITouchFrameService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/zeusis/touchframe/ITouchFrameService$Stub;->disable(I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v4

    .line 68
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v5, "com.zeusis.touchframe.ITouchFrameService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/zeusis/touchframe/ITouchFrameService$Stub;->setKeyMode(I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    return v4

    .line 77
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v5, "com.zeusis.touchframe.ITouchFrameService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 80
    .restart local v3    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v3}, Lcom/zeusis/touchframe/ITouchFrameService$Stub;->setOpenPaymentMenuSwith(Z)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v4

    .line 86
    .end local v3    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v5, "com.zeusis.touchframe.ITouchFrameService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/zeusis/touchframe/IThumbListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeusis/touchframe/IThumbListener;

    move-result-object v2

    .line 89
    .local v2, "_arg0":Lcom/zeusis/touchframe/IThumbListener;
    invoke-virtual {p0, v2}, Lcom/zeusis/touchframe/ITouchFrameService$Stub;->addThumbListener(Lcom/zeusis/touchframe/IThumbListener;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v4

    .line 95
    .end local v2    # "_arg0":Lcom/zeusis/touchframe/IThumbListener;
    :sswitch_6
    const-string/jumbo v5, "com.zeusis.touchframe.ITouchFrameService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/zeusis/touchframe/IThumbListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeusis/touchframe/IThumbListener;

    move-result-object v2

    .line 98
    .restart local v2    # "_arg0":Lcom/zeusis/touchframe/IThumbListener;
    invoke-virtual {p0, v2}, Lcom/zeusis/touchframe/ITouchFrameService$Stub;->removeThumbListener(Lcom/zeusis/touchframe/IThumbListener;)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v4

    .line 104
    .end local v2    # "_arg0":Lcom/zeusis/touchframe/IThumbListener;
    :sswitch_7
    const-string/jumbo v5, "com.zeusis.touchframe.ITouchFrameService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/zeusis/touchframe/IScreenshotListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeusis/touchframe/IScreenshotListener;

    move-result-object v1

    .line 107
    .local v1, "_arg0":Lcom/zeusis/touchframe/IScreenshotListener;
    invoke-virtual {p0, v1}, Lcom/zeusis/touchframe/ITouchFrameService$Stub;->addScreenshotListener(Lcom/zeusis/touchframe/IScreenshotListener;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    return v4

    .line 113
    .end local v1    # "_arg0":Lcom/zeusis/touchframe/IScreenshotListener;
    :sswitch_8
    const-string/jumbo v5, "com.zeusis.touchframe.ITouchFrameService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/zeusis/touchframe/IScreenshotListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zeusis/touchframe/IScreenshotListener;

    move-result-object v1

    .line 116
    .restart local v1    # "_arg0":Lcom/zeusis/touchframe/IScreenshotListener;
    invoke-virtual {p0, v1}, Lcom/zeusis/touchframe/ITouchFrameService$Stub;->removeScreenshotListener(Lcom/zeusis/touchframe/IScreenshotListener;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v4

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
