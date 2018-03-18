.class public abstract Lse/dirac/acs/api/IAudioControlService$Stub;
.super Landroid/os/Binder;
.source "IAudioControlService.java"

# interfaces
.implements Lse/dirac/acs/api/IAudioControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/acs/api/IAudioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "se.dirac.acs.api.IAudioControlService"

.field static final TRANSACTION_deleteDevice:I = 0x7

.field static final TRANSACTION_getCurrentOutputSettings:I = 0x8

.field static final TRANSACTION_getCurrentRouting:I = 0xd

.field static final TRANSACTION_getDevice:I = 0x1

.field static final TRANSACTION_getDeviceByProductID:I = 0x2

.field static final TRANSACTION_getDeviceVendorData:I = 0x4

.field static final TRANSACTION_getInstallationId:I = 0x10

.field static final TRANSACTION_getUser:I = 0xb

.field static final TRANSACTION_listDevices:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0xe

.field static final TRANSACTION_requestSync:I = 0xa

.field static final TRANSACTION_setDisabled:I = 0x6

.field static final TRANSACTION_setOutput:I = 0x5

.field static final TRANSACTION_setUser:I = 0xc

.field static final TRANSACTION_unregisterCallback:I = 0xf

.field static final TRANSACTION_userHasLicense:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 22
    invoke-virtual {p0, p0, v0}, Lse/dirac/acs/api/IAudioControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lse/dirac/acs/api/IAudioControlService;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30
    if-eqz p0, :cond_1

    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 33
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    if-nez v0, :cond_2

    .line 37
    :cond_0
    new-instance v0, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;

    invoke-direct {v0, p0}, Lse/dirac/acs/api/IAudioControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 31
    :cond_1
    return-object v0

    .line 34
    :cond_2
    instance-of v1, v0, Lse/dirac/acs/api/IAudioControlService;

    if-eqz v1, :cond_0

    .line 35
    check-cast v0, Lse/dirac/acs/api/IAudioControlService;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 49
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return v2

    :sswitch_1
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 54
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v4, v5, v0}, Lse/dirac/acs/api/IAudioControlService$Stub;->getDevice(JLjava/lang/String;)Lse/dirac/acs/api/Device;

    move-result-object v0

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    :goto_0
    return v2

    .line 62
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {v0, p3, v2}, Lse/dirac/acs/api/Device;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {p0, v0, v3}, Lse/dirac/acs/api/IAudioControlService$Stub;->getDeviceByProductID(Ljava/lang/String;Ljava/lang/String;)Lse/dirac/acs/api/Device;

    move-result-object v0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    :goto_1
    return v2

    .line 80
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v0, p3, v2}, Lse/dirac/acs/api/Device;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "se.dirac.acs.api.IAudioControlService"

    .line 90
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_2

    .line 100
    :goto_2
    invoke-virtual {p0, v1, v0}, Lse/dirac/acs/api/IAudioControlService$Stub;->listDevices(Ljava/lang/String;Lse/dirac/acs/api/Output;)Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 103
    return v2

    .line 95
    :cond_2
    sget-object v0, Lse/dirac/acs/api/Output;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Output;

    goto :goto_2

    :sswitch_4
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 107
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 110
    invoke-virtual {p0, v0, v1}, Lse/dirac/acs/api/IAudioControlService$Stub;->getDeviceVendorData(J)[B

    move-result-object v0

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 113
    return v2

    :sswitch_5
    const-string/jumbo v3, "se.dirac.acs.api.IAudioControlService"

    .line 117
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_3

    .line 125
    :goto_3
    invoke-virtual {p0, v0}, Lse/dirac/acs/api/IAudioControlService$Stub;->setOutput(Lse/dirac/acs/api/OutputSettings;)Z

    move-result v0

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return v2

    .line 120
    :cond_3
    sget-object v0, Lse/dirac/acs/api/OutputSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/OutputSettings;

    goto :goto_3

    :cond_4
    move v0, v2

    .line 127
    goto :goto_4

    :sswitch_6
    const-string/jumbo v1, "se.dirac.acs.api.IAudioControlService"

    .line 132
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_5

    .line 140
    :goto_5
    invoke-virtual {p0, v0}, Lse/dirac/acs/api/IAudioControlService$Stub;->setDisabled(Lse/dirac/acs/api/Output;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    return v2

    .line 135
    :cond_5
    sget-object v0, Lse/dirac/acs/api/Output;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Output;

    goto :goto_5

    :sswitch_7
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 146
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 149
    invoke-virtual {p0, v4, v5}, Lse/dirac/acs/api/IAudioControlService$Stub;->deleteDevice(J)Z

    move-result v0

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-nez v0, :cond_6

    :goto_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    return v2

    :cond_6
    move v1, v2

    .line 151
    goto :goto_6

    :sswitch_8
    const-string/jumbo v3, "se.dirac.acs.api.IAudioControlService"

    .line 156
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_7

    .line 164
    :goto_7
    invoke-virtual {p0, v0}, Lse/dirac/acs/api/IAudioControlService$Stub;->getCurrentOutputSettings(Lse/dirac/acs/api/Output;)Lse/dirac/acs/api/OutputSettings;

    move-result-object v0

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-nez v0, :cond_8

    .line 171
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    :goto_8
    return v2

    .line 159
    :cond_7
    sget-object v0, Lse/dirac/acs/api/Output;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lse/dirac/acs/api/Output;

    goto :goto_7

    .line 167
    :cond_8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    invoke-virtual {v0, p3, v2}, Lse/dirac/acs/api/OutputSettings;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :sswitch_9
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 177
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {p0, v0}, Lse/dirac/acs/api/IAudioControlService$Stub;->userHasLicense(Ljava/lang/String;)Z

    move-result v0

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-nez v0, :cond_9

    :goto_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return v2

    :cond_9
    move v1, v2

    .line 182
    goto :goto_9

    :sswitch_a
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 187
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lse/dirac/acs/api/IAudioControlService$Stub;->requestSync()I

    move-result v0

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return v2

    :sswitch_b
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 195
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lse/dirac/acs/api/IAudioControlService$Stub;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    return v2

    :sswitch_c
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 203
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-virtual {p0, v0, v3}, Lse/dirac/acs/api/IAudioControlService$Stub;->setUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-nez v0, :cond_a

    :goto_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return v2

    :cond_a
    move v1, v2

    .line 210
    goto :goto_a

    :sswitch_d
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 215
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lse/dirac/acs/api/IAudioControlService$Stub;->getCurrentRouting()I

    move-result v0

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return v2

    :sswitch_e
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 223
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lse/dirac/acs/api/IAudioControlServiceCallback;

    move-result-object v0

    .line 226
    invoke-virtual {p0, v0}, Lse/dirac/acs/api/IAudioControlService$Stub;->registerCallback(Lse/dirac/acs/api/IAudioControlServiceCallback;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    return v2

    :sswitch_f
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 232
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lse/dirac/acs/api/IAudioControlServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lse/dirac/acs/api/IAudioControlServiceCallback;

    move-result-object v0

    .line 235
    invoke-virtual {p0, v0}, Lse/dirac/acs/api/IAudioControlService$Stub;->unregisterCallback(Lse/dirac/acs/api/IAudioControlServiceCallback;)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    return v2

    :sswitch_10
    const-string/jumbo v0, "se.dirac.acs.api.IAudioControlService"

    .line 241
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lse/dirac/acs/api/IAudioControlService$Stub;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return v2

    .line 45
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
