.class final Lcom/google/android/gms/internal/ads/zzcpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzegv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzefb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcoc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoc;Lcom/google/android/gms/internal/ads/zzcoz;Lcom/google/android/gms/internal/ads/zzefb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpb;->zzb:Lcom/google/android/gms/internal/ads/zzcoc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpb;->zza:Lcom/google/android/gms/internal/ads/zzefb;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzefc;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpb;->zzb:Lcom/google/android/gms/internal/ads/zzcoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoc;->zzI()Lcom/google/android/gms/internal/ads/zzcmq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoc;->zzI()Lcom/google/android/gms/internal/ads/zzcmq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmx;->zzd(Lcom/google/android/gms/internal/ads/zzcmq;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcnn;->zzd(Lcom/google/android/gms/internal/ads/zzcmq;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcpb;->zza:Lcom/google/android/gms/internal/ads/zzefb;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbzm;->zza()Lcom/google/android/gms/internal/ads/zzbzl;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzefd;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzefb;Lcom/google/android/gms/internal/ads/zzbzl;)Lcom/google/android/gms/internal/ads/zzefc;

    move-result-object v0

    return-object v0
.end method
