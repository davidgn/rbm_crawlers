.class public final Lcom/google/android/gms/internal/ads/zzdbn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdbg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdbg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zza:Lcom/google/android/gms/internal/ads/zzdbg;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzdbn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdbn;-><init>(Lcom/google/android/gms/internal/ads/zzdbg;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzfkd;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzb()Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzimc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfkd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zza:Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbn;->zzd(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbn;->zza:Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbn;->zzd(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object v0

    return-object v0
.end method
