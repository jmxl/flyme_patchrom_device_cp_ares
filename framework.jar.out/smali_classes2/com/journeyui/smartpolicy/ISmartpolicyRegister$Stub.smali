.class public abstract Lcom/journeyui/smartpolicy/ISmartpolicyRegister$Stub;
.super Landroid/os/Binder;
.source "ISmartpolicyRegister.java"

# interfaces
.implements Lcom/journeyui/smartpolicy/ISmartpolicyRegister;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyui/smartpolicy/ISmartpolicyRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyui/smartpolicy/ISmartpolicyRegister$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.journeyui.smartpolicy.ISmartpolicyRegister"

.field static final TRANSACTION_onFactorChanged:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 12
    const-string/jumbo v0, "com.journeyui.smartpolicy.ISmartpolicyRegister"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/journeyui/smartpolicy/ISmartpolicyRegister;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 20
    if-nez p0, :cond_0

    .line 21
    return-object v1

    .line 23
    :cond_0
    const-string/jumbo v1, "com.journeyui.smartpolicy.ISmartpolicyRegister"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 24
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/journeyui/smartpolicy/ISmartpolicyRegister;

    if-eqz v1, :cond_1

    .line 25
    check-cast v0, Lcom/journeyui/smartpolicy/ISmartpolicyRegister;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 27
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/journeyui/smartpolicy/ISmartpolicyRegister$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/journeyui/smartpolicy/ISmartpolicyRegister$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 31
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v10, 0x1

    .line 37
    sparse-switch p1, :sswitch_data_0

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 39
    :sswitch_0
    const-string/jumbo v1, "com.journeyui.smartpolicy.ISmartpolicyRegister"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return v10

    .line 43
    :sswitch_1
    const-string/jumbo v1, "com.journeyui.smartpolicy.ISmartpolicyRegister"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/journeyui/smartpolicy/ISmartpolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/journeyui/smartpolicy/ISmartpolicyListener;

    move-result-object v0

    .line 47
    .local v0, "_arg0":Lcom/journeyui/smartpolicy/ISmartpolicyListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 48
    .local v4, "_arg1":J
    invoke-virtual {p0, v0, v4, v5}, Lcom/journeyui/smartpolicy/ISmartpolicyRegister$Stub;->registerListener(Lcom/journeyui/smartpolicy/ISmartpolicyListener;J)Z

    move-result v9

    .line 49
    .local v9, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v9, :cond_0

    move v1, v10

    :goto_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return v10

    .line 50
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    .end local v0    # "_arg0":Lcom/journeyui/smartpolicy/ISmartpolicyListener;
    .end local v4    # "_arg1":J
    .end local v9    # "_result":Z
    :sswitch_2
    const-string/jumbo v1, "com.journeyui.smartpolicy.ISmartpolicyRegister"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/journeyui/smartpolicy/ISmartpolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/journeyui/smartpolicy/ISmartpolicyListener;

    move-result-object v0

    .line 57
    .restart local v0    # "_arg0":Lcom/journeyui/smartpolicy/ISmartpolicyListener;
    invoke-virtual {p0, v0}, Lcom/journeyui/smartpolicy/ISmartpolicyRegister$Stub;->unregisterListener(Lcom/journeyui/smartpolicy/ISmartpolicyListener;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    return v10

    .line 62
    .end local v0    # "_arg0":Lcom/journeyui/smartpolicy/ISmartpolicyListener;
    :sswitch_3
    const-string/jumbo v1, "com.journeyui.smartpolicy.ISmartpolicyRegister"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 66
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 68
    .restart local v4    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 70
    .local v6, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg3":Ljava/lang/String;
    move-object v1, p0

    .line 71
    invoke-virtual/range {v1 .. v8}, Lcom/journeyui/smartpolicy/ISmartpolicyRegister$Stub;->onFactorChanged(JJJLjava/lang/String;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    return v10

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
