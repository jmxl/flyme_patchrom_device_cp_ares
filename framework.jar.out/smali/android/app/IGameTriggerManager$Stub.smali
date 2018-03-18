.class public abstract Landroid/app/IGameTriggerManager$Stub;
.super Landroid/os/Binder;
.source "IGameTriggerManager.java"

# interfaces
.implements Landroid/app/IGameTriggerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IGameTriggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IGameTriggerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IGameTriggerManager"

.field static final TRANSACTION_add:I = 0x2

.field static final TRANSACTION_addList:I = 0x3

.field static final TRANSACTION_getDisplay:I = 0xb

.field static final TRANSACTION_isInWhiteListed:I = 0x8

.field static final TRANSACTION_isInWhiteListedAsObject:I = 0xa

.field static final TRANSACTION_isInWhiteListedAsPkgAct:I = 0x9

.field static final TRANSACTION_remove:I = 0x5

.field static final TRANSACTION_removeAll:I = 0x7

.field static final TRANSACTION_removeAsPkgAct:I = 0x6

.field static final TRANSACTION_save:I = 0x1

.field static final TRANSACTION_update:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.app.IGameTriggerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IGameTriggerManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.app.IGameTriggerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IGameTriggerManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/IGameTriggerManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/IGameTriggerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IGameTriggerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 43
    :sswitch_0
    const-string/jumbo v6, "android.app.IGameTriggerManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v7

    .line 48
    :sswitch_1
    const-string/jumbo v6, "android.app.IGameTriggerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    sget-object v6, Landroid/app/GameOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 51
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    invoke-virtual {p0, v2}, Landroid/app/IGameTriggerManager$Stub;->save(Ljava/util/List;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    return v7

    .line 57
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :sswitch_2
    const-string/jumbo v6, "android.app.IGameTriggerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    sget-object v6, Landroid/app/GameOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/GameOps;

    .line 65
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/IGameTriggerManager$Stub;->add(Landroid/app/GameOps;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v7

    .line 63
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/app/GameOps;
    goto :goto_0

    .line 71
    .end local v0    # "_arg0":Landroid/app/GameOps;
    :sswitch_3
    const-string/jumbo v6, "android.app.IGameTriggerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    sget-object v6, Landroid/app/GameOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 74
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    invoke-virtual {p0, v2}, Landroid/app/IGameTriggerManager$Stub;->addList(Ljava/util/List;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v7

    .line 80
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/app/GameOps;>;"
    :sswitch_4
    const-string/jumbo v6, "android.app.IGameTriggerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    sget-object v6, Landroid/app/GameOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/GameOps;

    .line 88
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/IGameTriggerManager$Stub;->update(Landroid/app/GameOps;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v7

    .line 86
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/GameOps;
    goto :goto_1

    .line 94
    .end local v0    # "_arg0":Landroid/app/GameOps;
    :sswitch_5
    const-string/jumbo v6, "android.app.IGameTriggerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IGameTriggerManager$Stub;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    return v7

    .line 105
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v6, "android.app.IGameTriggerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IGameTriggerManager$Stub;->removeAsPkgAct(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    return v7

    .line 114
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v6, "android.app.IGameTriggerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/IGameTriggerManager$Stub;->removeAll()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    return v7

    .line 121
    :sswitch_8
    const-string/jumbo v8, "android.app.IGameTriggerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/app/IGameTriggerManager$Stub;->isInWhiteListed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 127
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v5, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    return v7

    .line 133
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Z
    :sswitch_9
    const-string/jumbo v8, "android.app.IGameTriggerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IGameTriggerManager$Stub;->isInWhiteListedAsPkgAct(Ljava/lang/String;)Z

    move-result v5

    .line 137
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v5, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return v7

    .line 143
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":Z
    :sswitch_a
    const-string/jumbo v8, "android.app.IGameTriggerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    .line 146
    sget-object v8, Landroid/app/GameOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/GameOps;

    .line 151
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/IGameTriggerManager$Stub;->isInWhiteListedAsObject(Landroid/app/GameOps;)Z

    move-result v5

    .line 152
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v5, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    return v7

    .line 149
    .end local v5    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/GameOps;
    goto :goto_2

    .line 158
    .end local v0    # "_arg0":Landroid/app/GameOps;
    :sswitch_b
    const-string/jumbo v6, "android.app.IGameTriggerManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IGameTriggerManager$Stub;->getDisplay(Ljava/lang/String;)I

    move-result v4

    .line 162
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return v7

    .line 39
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
