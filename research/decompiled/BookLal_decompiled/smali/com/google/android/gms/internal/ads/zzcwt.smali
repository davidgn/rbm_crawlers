.class public final Lcom/google/android/gms/internal/ads/zzcwt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcwq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcwq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwt;->zza:Lcom/google/android/gms/internal/ads/zzcwq;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcwq;)Lcom/google/android/gms/internal/ads/zzcwt;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcwt;-><init>(Lcom/google/android/gms/internal/ads/zzcwq;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcwq;)Lcom/google/android/gms/internal/ads/zzdex;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcwq;->zza()Lcom/google/android/gms/internal/ads/zzdex;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdex;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwt;->zza:Lcom/google/android/gms/internal/ads/zzcwq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcwt;->zzd(Lcom/google/android/gms/internal/ads/zzcwq;)Lcom/google/android/gms/internal/ads/zzdex;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwt;->zza:Lcom/google/android/gms/internal/ads/zzcwq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcwt;->zzd(Lcom/google/android/gms/internal/ads/zzcwq;)Lcom/google/android/gms/internal/ads/zzdex;

    move-result-object v0

    return-object v0
.end method
