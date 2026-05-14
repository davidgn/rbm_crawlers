.class final Lcom/google/android/gms/internal/ads/zzbto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcff;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbst;

.field final synthetic zzb:Ljava/lang/Object;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcfb;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbtr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbtr;Lcom/google/android/gms/internal/ads/zzbst;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcfb;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbto;->zza:Lcom/google/android/gms/internal/ads/zzbst;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzb:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzc:Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzd:Lcom/google/android/gms/internal/ads/zzbtr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbta;

    const-string v0, "callJs > getEngine: Promise fulfilled"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzb:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzc:Lcom/google/android/gms/internal/ads/zzcfb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbto;->zzd:Lcom/google/android/gms/internal/ads/zzbtr;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbto;->zza:Lcom/google/android/gms/internal/ads/zzbst;

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbtr;->zzc(Lcom/google/android/gms/internal/ads/zzbst;Lcom/google/android/gms/internal/ads/zzbta;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzcfb;)V

    return-void
.end method
