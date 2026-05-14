.class public final enum Lcom/google/android/gms/internal/ads/zzfts;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfts;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfts;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfts;

.field public static final enum zzd:Lcom/google/android/gms/internal/ads/zzfts;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/ads/zzfts;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfts;

    const-string v1, "VIDEO_CONTROLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfts;->zza:Lcom/google/android/gms/internal/ads/zzfts;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfts;

    const-string v2, "CLOSE_AD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfts;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfts;->zzb:Lcom/google/android/gms/internal/ads/zzfts;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfts;

    const-string v3, "NOT_VISIBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfts;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfts;->zzc:Lcom/google/android/gms/internal/ads/zzfts;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfts;

    const-string v4, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzfts;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzfts;->zzd:Lcom/google/android/gms/internal/ads/zzfts;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/ads/zzfts;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfts;->zze:[Lcom/google/android/gms/internal/ads/zzfts;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfts;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfts;->zze:[Lcom/google/android/gms/internal/ads/zzfts;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfts;

    return-object v0
.end method
