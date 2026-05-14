.class final Lcom/google/android/gms/internal/ads/zzcpa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcoc;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcoz;

.field private zzc:Lcom/google/android/gms/internal/ads/zzefb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcoc;Lcom/google/android/gms/internal/ads/zzcoz;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpa;->zza:Lcom/google/android/gms/internal/ads/zzcoc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpa;->zzb:Lcom/google/android/gms/internal/ads/zzcoz;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzegv;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpa;->zzc:Lcom/google/android/gms/internal/ads/zzefb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzefb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpa;->zza:Lcom/google/android/gms/internal/ads/zzcoc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpa;->zzb:Lcom/google/android/gms/internal/ads/zzcoz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcpa;->zzc:Lcom/google/android/gms/internal/ads/zzefb;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcpb;-><init>(Lcom/google/android/gms/internal/ads/zzcoc;Lcom/google/android/gms/internal/ads/zzcoz;Lcom/google/android/gms/internal/ads/zzefb;)V

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzefb;)Lcom/google/android/gms/internal/ads/zzegu;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpa;->zzc:Lcom/google/android/gms/internal/ads/zzefb;

    return-object p0
.end method
