.class public final Lcom/google/android/gms/internal/ads/zzgl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzgvm;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzge;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzgg;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzgk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzge;Lcom/google/android/gms/internal/ads/zzgg;Lcom/google/android/gms/internal/ads/zzgk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgvm;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgvm;->zzi()Lcom/google/android/gms/internal/ads/zzgvm;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgl;->zza:Lcom/google/android/gms/internal/ads/zzgvm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzb:Lcom/google/android/gms/internal/ads/zzge;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzc:Lcom/google/android/gms/internal/ads/zzgg;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgl;->zzd:Lcom/google/android/gms/internal/ads/zzgk;

    return-void
.end method
