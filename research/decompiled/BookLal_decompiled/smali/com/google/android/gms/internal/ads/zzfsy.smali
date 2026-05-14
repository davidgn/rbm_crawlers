.class final synthetic Lcom/google/android/gms/internal/ads/zzfsy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzfsy;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfsy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfsy;->zza:Lcom/google/android/gms/internal/ads/zzfsy;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfsp;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfsp;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfsp;->zze()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsp;->zze()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsp;->zzd()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfsp;->zzd()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method
