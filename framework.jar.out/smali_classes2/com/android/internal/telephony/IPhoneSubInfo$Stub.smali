.class public abstract Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.super Landroid/os/Binder;
.source "IPhoneSubInfo.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneSubInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneSubInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneSubInfo"

.field static final TRANSACTION_enableFakeBsTrack:I = 0x21

.field static final TRANSACTION_getCardTypeForSubscriber:I = 0x24

.field static final TRANSACTION_getCdmaPrlVersionForSlotId:I = 0x23

.field static final TRANSACTION_getCompleteVoiceMailNumber:I = 0x16

.field static final TRANSACTION_getCompleteVoiceMailNumberForSubscriber:I = 0x17

.field static final TRANSACTION_getDeviceId:I = 0x1

.field static final TRANSACTION_getDeviceIdForPhone:I = 0x3

.field static final TRANSACTION_getDeviceSvn:I = 0x6

.field static final TRANSACTION_getDeviceSvnUsingSubId:I = 0x7

.field static final TRANSACTION_getEsnForSubscriber:I = 0x25

.field static final TRANSACTION_getGroupIdLevel1:I = 0xa

.field static final TRANSACTION_getGroupIdLevel1ForSubscriber:I = 0xb

.field static final TRANSACTION_getIccSerialNumber:I = 0xc

.field static final TRANSACTION_getIccSerialNumberForSubscriber:I = 0xd

.field static final TRANSACTION_getIccSimChallengeResponse:I = 0x20

.field static final TRANSACTION_getImeiForSubscriber:I = 0x4

.field static final TRANSACTION_getIsimChallengeResponse:I = 0x1f

.field static final TRANSACTION_getIsimDomain:I = 0x1b

.field static final TRANSACTION_getIsimImpi:I = 0x1a

.field static final TRANSACTION_getIsimImpu:I = 0x1c

.field static final TRANSACTION_getIsimIst:I = 0x1d

.field static final TRANSACTION_getIsimPcscf:I = 0x1e

.field static final TRANSACTION_getLine1AlphaTag:I = 0x10

.field static final TRANSACTION_getLine1AlphaTagForSubscriber:I = 0x11

.field static final TRANSACTION_getLine1Number:I = 0xe

.field static final TRANSACTION_getLine1NumberForSubscriber:I = 0xf

.field static final TRANSACTION_getMeidForPhone:I = 0x5

.field static final TRANSACTION_getMsisdn:I = 0x12

.field static final TRANSACTION_getMsisdnForSubscriber:I = 0x13

.field static final TRANSACTION_getNaiForSubscriber:I = 0x2

.field static final TRANSACTION_getSubscriberId:I = 0x8

.field static final TRANSACTION_getSubscriberIdForSubscriber:I = 0x9

.field static final TRANSACTION_getUimIdForSubscriber:I = 0x26

.field static final TRANSACTION_getVoiceMailAlphaTag:I = 0x18

.field static final TRANSACTION_getVoiceMailAlphaTagForSubscriber:I = 0x19

.field static final TRANSACTION_getVoiceMailNumber:I = 0x14

.field static final TRANSACTION_getVoiceMailNumberForSubscriber:I = 0x15

.field static final TRANSACTION_phoneSubIoControlForSubscriber:I = 0x27

.field static final TRANSACTION_setSubPreferredNetworkTypeForFakeBsTrack:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.IPhoneSubInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/android/internal/telephony/IPhoneSubInfo;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 479
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    .line 46
    :sswitch_0
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v14, 0x1

    return v14

    .line 51
    :sswitch_1
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    const/4 v14, 0x1

    return v14

    .line 61
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 65
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 67
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    const/4 v14, 0x1

    return v14

    .line 73
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 77
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 78
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceIdForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 79
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    const/4 v14, 0x1

    return v14

    .line 85
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 90
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 91
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    const/4 v14, 0x1

    return v14

    .line 97
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 101
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMeidForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 103
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    const/4 v14, 0x1

    return v14

    .line 109
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 113
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    const/4 v14, 0x1

    return v14

    .line 119
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 124
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 125
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    const/4 v14, 0x1

    return v14

    .line 131
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 135
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    const/4 v14, 0x1

    return v14

    .line 141
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 146
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 147
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    const/4 v14, 0x1

    return v14

    .line 153
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 157
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    const/4 v14, 0x1

    return v14

    .line 163
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 168
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 169
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    const/4 v14, 0x1

    return v14

    .line 175
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 179
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    const/4 v14, 0x1

    return v14

    .line 185
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 191
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    const/4 v14, 0x1

    return v14

    .line 197
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 200
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 201
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    const/4 v14, 0x1

    return v14

    .line 207
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 212
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 213
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    const/4 v14, 0x1

    return v14

    .line 219
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 223
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    const/4 v14, 0x1

    return v14

    .line 229
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 234
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 235
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    const/4 v14, 0x1

    return v14

    .line 241
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 245
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    const/4 v14, 0x1

    return v14

    .line 251
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 256
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 257
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    const/4 v14, 0x1

    return v14

    .line 263
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 267
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    const/4 v14, 0x1

    return v14

    .line 273
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 279
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    const/4 v14, 0x1

    return v14

    .line 285
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumber()Ljava/lang/String;

    move-result-object v11

    .line 287
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    const/4 v14, 0x1

    return v14

    .line 293
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 296
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;

    move-result-object v11

    .line 297
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    const/4 v14, 0x1

    return v14

    .line 303
    .end local v1    # "_arg0":I
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 306
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 307
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    const/4 v14, 0x1

    return v14

    .line 313
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 317
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 318
    .restart local v5    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 319
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    const/4 v14, 0x1

    return v14

    .line 325
    .end local v1    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpi()Ljava/lang/String;

    move-result-object v11

    .line 327
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    const/4 v14, 0x1

    return v14

    .line 333
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimDomain()Ljava/lang/String;

    move-result-object v11

    .line 335
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    const/4 v14, 0x1

    return v14

    .line 341
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimImpu()[Ljava/lang/String;

    move-result-object v13

    .line 343
    .local v13, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 345
    const/4 v14, 0x1

    return v14

    .line 349
    .end local v13    # "_result":[Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimIst()Ljava/lang/String;

    move-result-object v11

    .line 351
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    const/4 v14, 0x1

    return v14

    .line 357
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v13

    .line 359
    .restart local v13    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 361
    const/4 v14, 0x1

    return v14

    .line 365
    .end local v13    # "_result":[Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 368
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 369
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    const/4 v14, 0x1

    return v14

    .line 375
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 383
    .local v6, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v6, v9}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getIccSimChallengeResponse(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 385
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    const/4 v14, 0x1

    return v14

    .line 391
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v6    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 394
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->enableFakeBsTrack(I)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/4 v14, 0x1

    return v14

    .line 400
    .end local v1    # "_arg0":I
    :sswitch_22
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 404
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 405
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->setSubPreferredNetworkTypeForFakeBsTrack(II)Z

    move-result v12

    .line 406
    .local v12, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    if-eqz v12, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    const/4 v14, 0x1

    return v14

    .line 407
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 412
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v12    # "_result":Z
    :sswitch_23
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 415
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCdmaPrlVersionForSlotId(I)Ljava/lang/String;

    move-result-object v11

    .line 416
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    const/4 v14, 0x1

    return v14

    .line 422
    .end local v1    # "_arg0":I
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 425
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getCardTypeForSubscriber(I)I

    move-result v10

    .line 426
    .local v10, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    const/4 v14, 0x1

    return v14

    .line 432
    .end local v1    # "_arg0":I
    .end local v10    # "_result":I
    :sswitch_25
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 435
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getEsnForSubscriber(I)Ljava/lang/String;

    move-result-object v11

    .line 436
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    const/4 v14, 0x1

    return v14

    .line 442
    .end local v1    # "_arg0":I
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 445
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->getUimIdForSubscriber(I)Ljava/lang/String;

    move-result-object v11

    .line 446
    .restart local v11    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    const/4 v14, 0x1

    return v14

    .line 452
    .end local v1    # "_arg0":I
    .end local v11    # "_result":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneSubInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 456
    .restart local v1    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1

    .line 457
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 463
    :goto_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 465
    .local v7, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 466
    .local v8, "_arg3":I
    invoke-virtual {p0, v1, v4, v7, v8}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->phoneSubIoControlForSubscriber(ILandroid/os/Bundle;Landroid/os/Bundle;I)Z

    move-result v12

    .line 467
    .restart local v12    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    if-eqz v12, :cond_2

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    if-eqz v7, :cond_3

    .line 470
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 476
    :goto_3
    const/4 v14, 0x1

    return v14

    .line 460
    .end local v7    # "_arg2":Landroid/os/Bundle;
    .end local v8    # "_arg3":I
    .end local v12    # "_result":Z
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 468
    .end local v4    # "_arg1":Landroid/os/Bundle;
    .restart local v7    # "_arg2":Landroid/os/Bundle;
    .restart local v8    # "_arg3":I
    .restart local v12    # "_result":Z
    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    .line 474
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 42
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
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
