.class public final Lcom/google/android/gms/internal/ads/zzbha$zzaw$zza;
.super Lcom/google/android/gms/internal/ads/zzicx;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbha$zzax;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzicx<",
        "Lcom/google/android/gms/internal/ads/zzbha$zzaw;",
        "Lcom/google/android/gms/internal/ads/zzbha$zzaw$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbha$zzax;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzaw;->zzv()Lcom/google/android/gms/internal/ads/zzbha$zzaw;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzicx;-><init>(Lcom/google/android/gms/internal/ads/zzidd;)V

    return-void
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbha$zzaw$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzaw;->zza()Z

    move-result v0

    return v0
.end method

.method public zzb()Lcom/google/android/gms/internal/ads/zzbha$zzaw$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzaw;->zzb()Lcom/google/android/gms/internal/ads/zzbha$zzaw$zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/android/gms/internal/ads/zzbha$zzaw$zzb;)Lcom/google/android/gms/internal/ads/zzbha$zzaw$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzaw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaw;->zzt(Lcom/google/android/gms/internal/ads/zzbha$zzaw$zzb;)V

    return-object p0
.end method

.method public zzd()Lcom/google/android/gms/internal/ads/zzbha$zzaw$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzicx;->zza:Lcom/google/android/gms/internal/ads/zzidd;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzaw;->zzu()V

    return-object p0
.end method
