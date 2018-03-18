.class public final Landroid/os/AlarmStats$WakeupEvent;
.super Ljava/lang/Object;
.source "AlarmStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AlarmStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeupEvent"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public times:I

.field public type:Ljava/lang/String;

.field public uid:I

.field public when:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "theTime"    # J
    .param p3, "theType"    # Ljava/lang/String;
    .param p4, "theTag"    # Ljava/lang/String;
    .param p5, "theUid"    # I
    .param p6, "thePackageName"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-wide p1, p0, Landroid/os/AlarmStats$WakeupEvent;->when:J

    .line 141
    iput-object p3, p0, Landroid/os/AlarmStats$WakeupEvent;->type:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Landroid/os/AlarmStats$WakeupEvent;->tag:Ljava/lang/String;

    .line 143
    iput p5, p0, Landroid/os/AlarmStats$WakeupEvent;->uid:I

    .line 144
    iput-object p6, p0, Landroid/os/AlarmStats$WakeupEvent;->packageName:Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/AlarmStats$WakeupEvent;->times:I

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/os/AlarmStats$WakeupEvent;)V
    .locals 2
    .param p1, "source"    # Landroid/os/AlarmStats$WakeupEvent;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iget-wide v0, p1, Landroid/os/AlarmStats$WakeupEvent;->when:J

    iput-wide v0, p0, Landroid/os/AlarmStats$WakeupEvent;->when:J

    .line 150
    iget-object v0, p1, Landroid/os/AlarmStats$WakeupEvent;->type:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/AlarmStats$WakeupEvent;->type:Ljava/lang/String;

    .line 151
    iget-object v0, p1, Landroid/os/AlarmStats$WakeupEvent;->tag:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/AlarmStats$WakeupEvent;->tag:Ljava/lang/String;

    .line 152
    iget v0, p1, Landroid/os/AlarmStats$WakeupEvent;->uid:I

    iput v0, p0, Landroid/os/AlarmStats$WakeupEvent;->uid:I

    .line 153
    iget-object v0, p1, Landroid/os/AlarmStats$WakeupEvent;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/AlarmStats$WakeupEvent;->packageName:Ljava/lang/String;

    .line 154
    iget v0, p1, Landroid/os/AlarmStats$WakeupEvent;->times:I

    iput v0, p0, Landroid/os/AlarmStats$WakeupEvent;->times:I

    .line 148
    return-void
.end method
