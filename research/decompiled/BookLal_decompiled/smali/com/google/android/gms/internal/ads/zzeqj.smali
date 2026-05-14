.class final Lcom/google/android/gms/internal/ads/zzeqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfb;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfjv;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzfjk;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzeqq;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzeql;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeql;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzeqq;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqj;->zza:Lcom/google/android/gms/internal/ads/zzcfb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeqj;->zzb:Lcom/google/android/gms/internal/ads/zzfjv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeqj;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeqj;->zzd:Lcom/google/android/gms/internal/ads/zzeqq;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqj;->zze:Lcom/google/android/gms/internal/ads/zzeql;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqj;->zzd:Lcom/google/android/gms/internal/ads/zzeqq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqj;->zze:Lcom/google/android/gms/internal/ads/zzeql;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeql;->zzd()Lcom/google/android/gms/internal/ads/zzequ;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeqj;->zzb:Lcom/google/android/gms/internal/ads/zzfjv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeqj;->zzc:Lcom/google/android/gms/internal/ads/zzfjk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeqj;->zza:Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/google/android/gms/internal/ads/zzequ;->zza(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeqq;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzc(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb()V
    .locals 0

    return-void
.end method

.method public final zzc()V
    .locals 0

    return-void
.end method
