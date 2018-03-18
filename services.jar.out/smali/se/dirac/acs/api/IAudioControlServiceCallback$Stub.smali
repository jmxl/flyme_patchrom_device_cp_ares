.class public abstract Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IAudioControlServiceCallback.java"

# interfaces
.implements Lse/dirac/acs/api/IAudioControlServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/IAudioControlServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/dirac/acs/api/IAudioControlServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "se.dirac.acs.api.IAudioControlServiceCallback"

.field static final TRANSACTION_onFilterAdd:I = 0x1

.field static final TRANSACTION_onRoutingChanged:I = 0x5

.field static final TRANSACTION_onSetUser:I = 0x3

.field static final TRANSACTION_onSettingsChanged:I = 0x4

.field static final TRANSACTION_onSyncDone:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlServiceCallback"

    .line 15
    invoke-virtual {p0, p0, v0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lse/dirac/acs/api/IAudioControlServiceCallback;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_1

    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlServiceCallback"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-nez v0, :cond_2

    .line 30
    :cond_0
    new-instance v0, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 24
    :cond_1
    return-object v0

    .line 27
    :cond_2
    instance-of v1, v0, Lse/dirac/acs/api/IAudioControlServiceCallback;

    if-eqz v1, :cond_0

    .line 28
    check-cast v0, Lse/dirac/acs/api/IAudioControlServiceCallback;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlServiceCallback"

    .line 42
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v3

    :sswitch_1
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlServiceCallback"

    .line 47
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 52
    invoke-virtual {p0, v0, v1, v2}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->onFilterAdd(J[I)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v3

    :sswitch_2
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlServiceCallback"

    .line 58
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->onSyncDone()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    return v3

    :sswitch_3
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlServiceCallback"

    .line 65
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->onSetUser(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v3

    :sswitch_4
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlServiceCallback"

    .line 74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move-object v1, v2

    .line 83
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :goto_1
    invoke-virtual {p0, v1, v2}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->onSettingsChanged(Lse/dirac/acs/api/Output;Lse/dirac/acs/api/OutputSettings;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v3

    .line 77
    :cond_0
    sget-object v0, Lse/dirac/acs/api/Output;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Output;

    move-object v1, v0

    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Lse/dirac/acs/api/OutputSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/OutputSettings;

    move-object v2, v0

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlServiceCallback"

    .line 95
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    invoke-virtual {p0, v0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->onRoutingChanged(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v3

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
