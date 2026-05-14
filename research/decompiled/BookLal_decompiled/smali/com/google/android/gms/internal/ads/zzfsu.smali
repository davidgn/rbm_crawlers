.class final Lcom/google/android/gms/internal/ads/zzfsu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzftc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzftc;JLcom/google/android/gms/ads/internal/client/zzdx;)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfsu;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfsu;->zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsu;->zzc:Lcom/google/android/gms/internal/ads/zzftc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsu;->zzc:Lcom/google/android/gms/internal/ads/zzftc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftc;->zzJ()Lcom/google/android/gms/internal/ads/zzfsg;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftc;->zzJ()Lcom/google/android/gms/internal/ads/zzfsg;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfsu;->zza:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsu;->zzb:Lcom/google/android/gms/ads/internal/client/zzdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftc;->zzL()Lcom/google/android/gms/internal/ads/zzfsn;

    move-result-object v6

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzftc;->zzM(Lcom/google/android/gms/ads/internal/client/zzdx;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzftc;->zze:Lcom/google/android/gms/ads/internal/client/zzfp;

    iget v7, v1, Lcom/google/android/gms/ads/internal/client/zzfp;->zzd:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftc;->zzp()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftc;->zzI()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzfsg;->zzi(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzfsn;IILjava/lang/String;)V

    :cond_0
    return-void
.end method
