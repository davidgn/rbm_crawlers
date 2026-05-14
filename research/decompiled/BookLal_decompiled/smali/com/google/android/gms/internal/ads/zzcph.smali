.class final Lcom/google/android/gms/internal/ads/zzcph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcoc;

.field private zzb:Lcom/google/android/gms/internal/ads/zzdbg;

.field private zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcoc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcph;->zza:Lcom/google/android/gms/internal/ads/zzcoc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzx;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzb:Lcom/google/android/gms/internal/ads/zzdbg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;

    const-class v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzimc;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpi;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcye;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcye;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdaf;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzdaf;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdzf;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdzf;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzb:Lcom/google/android/gms/internal/ads/zzdbg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcph;->zza:Lcom/google/android/gms/internal/ads/zzcoc;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzcpi;-><init>(Lcom/google/android/gms/internal/ads/zzcoc;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;Lcom/google/android/gms/internal/ads/zzcye;Lcom/google/android/gms/internal/ads/zzdaf;Lcom/google/android/gms/internal/ads/zzdzf;Lcom/google/android/gms/internal/ads/zzdbg;Lcom/google/android/gms/internal/ads/zzfhf;Lcom/google/android/gms/internal/ads/zzfgj;)V

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzat;

    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzw;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcph;->zzb:Lcom/google/android/gms/internal/ads/zzdbg;

    return-object p0
.end method
