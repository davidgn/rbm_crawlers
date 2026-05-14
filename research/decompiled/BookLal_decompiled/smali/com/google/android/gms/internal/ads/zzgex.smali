.class final Lcom/google/android/gms/internal/ads/zzgex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhad;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgfc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgfc;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgex;->zza:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)LN2/o;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgev;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgex;->zza:Lcom/google/android/gms/internal/ads/zzgfc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgfc;->zza()Lcom/google/android/gms/internal/ads/zzgph;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgph;->zzb(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgfc;->zze()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgfc;->zzd(I)LN2/o;

    move-result-object p1

    :goto_0
    return-object p1
.end method
