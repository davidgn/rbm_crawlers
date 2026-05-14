.class final Lcom/google/android/gms/internal/ads/zzcoz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzego;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzimd;

.field final zzb:Lcom/google/android/gms/internal/ads/zzimd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcoc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzcoz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoc;Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzd:Lcom/google/android/gms/internal/ads/zzcoz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzc:Lcom/google/android/gms/internal/ads/zzcoc;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzaG:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzehw;->zzc(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzehw;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zza:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzf:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnf;->zza()Lcom/google/android/gms/internal/ads/zzfnf;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcnw;->zza:Lcom/google/android/gms/internal/ads/zzcnx;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzaF:Lcom/google/android/gms/internal/ads/zzimd;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzaH:Lcom/google/android/gms/internal/ads/zzimd;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzcnt;->zza:Lcom/google/android/gms/internal/ads/zzcnu;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzcoc;->zzG:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzeho;->zza(Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzeho;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzegs;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzc:Lcom/google/android/gms/internal/ads/zzcoc;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcoc;->zzp:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoc;->zzI()Lcom/google/android/gms/internal/ads/zzcmq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzb:Lcom/google/android/gms/internal/ads/zzimd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcoc;->zzI()Lcom/google/android/gms/internal/ads/zzcmq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcmx;->zzd(Lcom/google/android/gms/internal/ads/zzcmq;)Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnl;->zzc()Lcom/google/android/gms/internal/ads/zzhbf;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnf;->zzc()Lcom/google/android/gms/internal/ads/zzhbf;

    move-result-object v6

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzilt;->zzc(Lcom/google/android/gms/internal/ads/zzimd;)Lcom/google/android/gms/internal/ads/zzilo;

    move-result-object v7

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcnn;->zzd(Lcom/google/android/gms/internal/ads/zzcmq;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v8

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzimj;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzdyq;

    move-object v9, p0

    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzegt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzhbf;Lcom/google/android/gms/internal/ads/zzhbf;Lcom/google/android/gms/internal/ads/zzilo;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzego;Lcom/google/android/gms/internal/ads/zzdyq;)Lcom/google/android/gms/internal/ads/zzegs;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzegu;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzc:Lcom/google/android/gms/internal/ads/zzcoc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcoz;->zzd:Lcom/google/android/gms/internal/ads/zzcoz;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcpa;-><init>(Lcom/google/android/gms/internal/ads/zzcoc;Lcom/google/android/gms/internal/ads/zzcoz;[B)V

    return-object v0
.end method
