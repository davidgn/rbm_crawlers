.class final Lcom/google/android/gms/internal/ads/zzfge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfml;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfhb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfhb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfge;->zza:Lcom/google/android/gms/internal/ads/zzfhb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfmm;)LN2/o;
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfgh;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfgh;->zzb:Lcom/google/android/gms/internal/ads/zzfhc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfgh;->zza:Lcom/google/android/gms/internal/ads/zzfha;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfge;->zza:Lcom/google/android/gms/internal/ads/zzfhb;

    const/4 v2, 0x0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfgd;

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfgd;->zzb(Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/internal/ads/zzdbe;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfmb;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfge;->zza:Lcom/google/android/gms/internal/ads/zzfhb;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfgd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfgd;->zza()Lcom/google/android/gms/internal/ads/zzdbe;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzfmb;->zza:Lcom/google/android/gms/internal/ads/zzdbe;

    return-void
.end method
