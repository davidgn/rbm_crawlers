.class public final Lcom/google/android/gms/internal/ads/zzdnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzilu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdnc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdnc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzdnc;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdnc;)Lcom/google/android/gms/internal/ads/zzdnf;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdnf;-><init>(Lcom/google/android/gms/internal/ads/zzdnc;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzdnc;)Lcom/google/android/gms/internal/ads/zzdpi;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdnc;->zza()Lcom/google/android/gms/internal/ads/zzdpi;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzimc;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdpi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzdnc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnf;->zzd(Lcom/google/android/gms/internal/ads/zzdnc;)Lcom/google/android/gms/internal/ads/zzdpi;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnf;->zza:Lcom/google/android/gms/internal/ads/zzdnc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdnf;->zzd(Lcom/google/android/gms/internal/ads/zzdnc;)Lcom/google/android/gms/internal/ads/zzdpi;

    move-result-object v0

    return-object v0
.end method
