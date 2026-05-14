.class public final Lcom/google/android/gms/internal/ads/zzcpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcpk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcpk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpl;->zza:Lcom/google/android/gms/internal/ads/zzcpk;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcpk;)Lcom/google/android/gms/internal/ads/zzcpl;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcpl;-><init>(Lcom/google/android/gms/internal/ads/zzcpk;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcpk;)Lcom/google/android/gms/ads/internal/zza;
    .locals 2

    new-instance p0, Lcom/google/android/gms/ads/internal/zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzchp;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcgk;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcgk;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zza;-><init>(Lcom/google/android/gms/internal/ads/zzchp;Lcom/google/android/gms/internal/ads/zzcfz;)V

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpl;->zza:Lcom/google/android/gms/internal/ads/zzcpk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcpl;->zzd(Lcom/google/android/gms/internal/ads/zzcpk;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpl;->zza:Lcom/google/android/gms/internal/ads/zzcpk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcpl;->zzd(Lcom/google/android/gms/internal/ads/zzcpk;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    return-object v0
.end method
