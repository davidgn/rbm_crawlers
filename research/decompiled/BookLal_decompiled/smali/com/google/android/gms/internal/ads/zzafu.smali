.class public Lcom/google/android/gms/internal/ads/zzafu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzagj;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzagj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafu;->zza:Lcom/google/android/gms/internal/ads/zzagj;

    return-void
.end method


# virtual methods
.method public zza()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zza:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagj;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zza:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzagj;->zzb()Z

    move-result v0

    return v0
.end method

.method public zzc(J)Lcom/google/android/gms/internal/ads/zzagh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafu;->zza:Lcom/google/android/gms/internal/ads/zzagj;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagj;->zzc(J)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object p1

    return-object p1
.end method
