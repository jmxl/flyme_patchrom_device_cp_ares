.class public abstract Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OverflowArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OVERFLOW_NAME:Ljava/lang/String; = "*overflow*"


# instance fields
.field mActiveOverflow:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field mCurOverflow:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mLastCleanupTime:J

.field mLastClearTime:J

.field mLastOverflowFinishTime:J

.field mLastOverflowTime:J

.field final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field final mUid:I

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I

    .prologue
    .line 1976
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1968
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    .line 1977
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    .line 1976
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 1992
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 1993
    const-string/jumbo p1, ""

    .line 1995
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1996
    const-string/jumbo v0, "*overflow*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1997
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 1991
    :cond_1
    return-void
.end method

.method public cleanup()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    const/4 v4, 0x0

    .line 2002
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTime:J

    .line 2003
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 2004
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2005
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 2008
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-nez v0, :cond_3

    .line 2011
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "*overflow*"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2012
    const-string/jumbo v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cleaning up with no active overflow, but have overflow entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2013
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v3, "*overflow*"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2012
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "*overflow*"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2016
    :cond_1
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 2001
    :cond_2
    :goto_0
    return-void

    .line 2019
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "*overflow*"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2020
    :cond_4
    const-string/jumbo v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cleaning up with active overflow, but no overflow entry: cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2021
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 2020
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2021
    const-string/jumbo v2, " map="

    .line 2020
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2021
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v3, "*overflow*"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2020
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    const/4 v2, 0x0

    .line 1985
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTime:J

    .line 1986
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1987
    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 1988
    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 1984
    return-void
.end method

.method public getMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 1981
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public abstract instantiateObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public startObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2027
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    if-nez p1, :cond_0

    .line 2028
    const-string/jumbo p1, ""

    .line 2030
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2031
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_1

    .line 2032
    return-object v1

    .line 2037
    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v3, :cond_3

    .line 2038
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/MutableInt;

    .line 2039
    .local v2, "over":Landroid/util/MutableInt;
    if-eqz v2, :cond_3

    .line 2041
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 2042
    if-nez v1, :cond_2

    .line 2044
    const-string/jumbo v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Have active overflow "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " but null overflow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 2046
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v4, "*overflow*"

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    :cond_2
    iget v3, v2, Landroid/util/MutableInt;->value:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/util/MutableInt;->value:I

    .line 2049
    return-object v1

    .line 2055
    .end local v2    # "over":Landroid/util/MutableInt;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 2056
    .local v0, "N":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_6

    .line 2059
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 2060
    if-nez v1, :cond_4

    .line 2062
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 2063
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v4, "*overflow*"

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2065
    :cond_4
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-nez v3, :cond_5

    .line 2066
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    .line 2068
    :cond_5
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/MutableInt;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2069
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTime:J

    .line 2070
    return-object v1

    .line 2074
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v1

    .line 2075
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2076
    return-object v1
.end method

.method public stopObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;, "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap<TT;>;"
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 2080
    if-nez p1, :cond_0

    .line 2081
    const-string/jumbo p1, ""

    .line 2083
    :cond_0
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2084
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 2085
    return-object v2

    .line 2090
    :cond_1
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v5, :cond_3

    .line 2091
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/MutableInt;

    .line 2092
    .local v3, "over":Landroid/util/MutableInt;
    if-eqz v3, :cond_3

    .line 2094
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    .line 2095
    if-eqz v2, :cond_3

    .line 2096
    iget v5, v3, Landroid/util/MutableInt;->value:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Landroid/util/MutableInt;->value:I

    .line 2097
    iget v5, v3, Landroid/util/MutableInt;->value:I

    if-gtz v5, :cond_2

    .line 2098
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTime:J

    .line 2101
    :cond_2
    return-object v2

    .line 2108
    .end local v3    # "over":Landroid/util/MutableInt;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2109
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "Unable to find object for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2110
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    const-string/jumbo v5, " in uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2112
    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2113
    const-string/jumbo v5, " mapsize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2115
    const-string/jumbo v5, " activeoverflow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2116
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2117
    const-string/jumbo v5, " curoverflow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2118
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2119
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2120
    .local v0, "now":J
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_4

    .line 2121
    const-string/jumbo v5, " lastOverflowTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTime:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2124
    :cond_4
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    .line 2125
    const-string/jumbo v5, " lastOverflowFinishTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTime:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2128
    :cond_5
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_6

    .line 2129
    const-string/jumbo v5, " lastClearTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2130
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTime:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2132
    :cond_6
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_7

    .line 2133
    const-string/jumbo v5, " lastCleanupTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2134
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTime:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2136
    :cond_7
    const-string/jumbo v5, "BatteryStatsImpl"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    return-object v8
.end method