.class public Lcom/google/android/gms/internal/ads/zzcux;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcww;

.field private final zzb:Landroid/view/View;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfjl;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcjz;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcww;Lcom/google/android/gms/internal/ads/zzfjl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzb:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzd:Lcom/google/android/gms/internal/ads/zzcjz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcux;->zza:Lcom/google/android/gms/internal/ads/zzcww;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzc:Lcom/google/android/gms/internal/ads/zzfjl;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcjz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzd:Lcom/google/android/gms/internal/ads/zzcjz;

    return-object v0
.end method

.method public final zzb()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzb:Landroid/view/View;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcww;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcux;->zza:Lcom/google/android/gms/internal/ads/zzcww;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfjl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcux;->zzc:Lcom/google/android/gms/internal/ads/zzfjl;

    return-object v0
.end method

.method public zze(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzddi;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzddi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzddi;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
