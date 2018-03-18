.class public abstract Lcom/journeyui/smartpolicy/ISmartpolicyListener$Stub;
.super Landroid/os/Binder;
.source "ISmartpolicyListener.java"

# interfaces
.implements Lcom/journeyui/smartpolicy/ISmartpolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyui/smartpolicy/ISmartpolicyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyui/smartpolicy/ISmartpolicyListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.journeyui.smartpolicy.ISmartpolicyListener"

.field static final TRANSACTION_onModeChanged:I = 0x1

.field static final TRANSACTION_onModeChanged2:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 14
    const-string/jumbo v0, "com.journeyui.smartpolicy.ISmartpolicyListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/journeyui/smartpolicy/ISmartpolicyListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 21
    if-nez p0, :cond_0

    .line 22
    return-object v1

    .line 24
    :cond_0
    const-string/jumbo v1, "com.journeyui.smartpolicy.ISmartpolicyListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 25
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/journeyui/smartpolicy/ISmartpolicyListener;

    if-eqz v1, :cond_1

    .line 26
    check-cast v0, Lcom/journeyui/smartpolicy/ISmartpolicyListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 28
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/journeyui/smartpolicy/ISmartpolicyListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/journeyui/smartpolicy/ISmartpolicyListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 31
    return-object p0
.end method

.method public onModeChanged2(JJLcom/journeyui/smartpolicy/AppInfo;)V
    .locals 0
    .param p1, "para1"    # J
    .param p3, "para2"    # J
    .param p5, "appInfo"    # Lcom/journeyui/smartpolicy/AppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 36
    sparse-switch p1, :sswitch_data_0

    .line 69
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 38
    :sswitch_0
    const-string/jumbo v2, "com.journeyui.smartpolicy.ISmartpolicyListener"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    const/4 v2, 0x1

    return v2

    .line 42
    :sswitch_1
    const-string/jumbo v2, "com.journeyui.smartpolicy.ISmartpolicyListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 46
    .local v4, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 48
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg2":Ljava/lang/String;
    move-object v3, p0

    .line 49
    invoke-virtual/range {v3 .. v8}, Lcom/journeyui/smartpolicy/ISmartpolicyListener$Stub;->onModeChanged(JJLjava/lang/String;)V

    .line 50
    const/4 v2, 0x1

    return v2

    .line 53
    .end local v4    # "_arg0":J
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v2, "com.journeyui.smartpolicy.ISmartpolicyListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 57
    .restart local v4    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 59
    .restart local v6    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    sget-object v2, Lcom/journeyui/smartpolicy/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/journeyui/smartpolicy/AppInfo;

    :goto_0
    move-object v9, p0

    move-wide v10, v4

    move-wide v12, v6

    .line 65
    invoke-virtual/range {v9 .. v14}, Lcom/journeyui/smartpolicy/ISmartpolicyListener$Stub;->onModeChanged2(JJLcom/journeyui/smartpolicy/AppInfo;)V

    .line 66
    const/4 v2, 0x1

    return v2

    .line 63
    :cond_0
    const/4 v14, 0x0

    .local v14, "_arg2":Lcom/journeyui/smartpolicy/AppInfo;
    goto :goto_0

    .line 36
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
