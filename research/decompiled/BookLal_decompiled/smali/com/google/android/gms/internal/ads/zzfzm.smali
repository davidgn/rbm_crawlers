.class public final Lcom/google/android/gms/internal/ads/zzfzm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfzk;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzfzk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzm;->zza:Lcom/google/android/gms/internal/ads/zzfzk;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzm;->zzb:Lcom/google/android/gms/internal/ads/zzfzk;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfzk;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzm;->zzb:Lcom/google/android/gms/internal/ads/zzfzk;

    return-object v0
.end method
