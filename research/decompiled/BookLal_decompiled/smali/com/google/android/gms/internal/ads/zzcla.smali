.class final synthetic Lcom/google/android/gms/internal/ads/zzcla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbgt;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcla;->zza:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcla;->zzb:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbha$zzt$zza;)V
    .locals 3

    sget v0, Lcom/google/android/gms/internal/ads/zzclc;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzbl;->zzq()Lcom/google/android/gms/internal/ads/zzbha$zzbl$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbha$zzbl$zza;->zzb()Z

    move-result v1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcla;->zza:Z

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbha$zzbl$zza;->zzc(Z)Lcom/google/android/gms/internal/ads/zzbha$zzbl$zza;

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzcla;->zzb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbha$zzbl$zza;->zzg(I)Lcom/google/android/gms/internal/ads/zzbha$zzbl$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbha$zzbl;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbha$zzt$zza;->zzal(Lcom/google/android/gms/internal/ads/zzbha$zzbl;)Lcom/google/android/gms/internal/ads/zzbha$zzt$zza;

    return-void
.end method
