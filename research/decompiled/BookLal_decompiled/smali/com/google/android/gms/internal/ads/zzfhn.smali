.class public final Lcom/google/android/gms/internal/ads/zzfhn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzesx;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcmo;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzesh;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfio;

.field private zzf:Lcom/google/android/gms/internal/ads/zzbiq;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfpm;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfkc;

.field private zzi:LN2/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcmo;Lcom/google/android/gms/internal/ads/zzesh;Lcom/google/android/gms/internal/ads/zzfio;Lcom/google/android/gms/internal/ads/zzfkc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzc:Lcom/google/android/gms/internal/ads/zzcmo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzd:Lcom/google/android/gms/internal/ads/zzesh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzh:Lcom/google/android/gms/internal/ads/zzfkc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zze:Lcom/google/android/gms/internal/ads/zzfio;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcmo;->zzx()Lcom/google/android/gms/internal/ads/zzfpm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzg:Lcom/google/android/gms/internal/ads/zzfpm;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzesv;Lcom/google/android/gms/internal/ads/zzesw;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for interstitial ad."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzb:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfhm;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzfhm;-><init>(Lcom/google/android/gms/internal/ads/zzfhn;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfhn;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzdi:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzc()V

    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzkm:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzc:Lcom/google/android/gms/internal/ads/zzcmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmo;->zzw()Lcom/google/android/gms/internal/ads/zzebw;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzebw;->zzc(Z)V

    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzfhg;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzfhg;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v0, Landroid/util/Pair;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxz;->zza:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxz;->zzb:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v2}, [Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyb;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzh:Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzfkc;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzfkc;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfkc;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfkc;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfkc;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfkc;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zza:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfkc;->zzA()Lcom/google/android/gms/internal/ads/zzfkd;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfpi;->zzg(Lcom/google/android/gms/internal/ads/zzfkd;)I

    move-result v0

    const/4 v2, 0x4

    invoke-static {p2, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzfoz;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfoz;

    move-result-object v7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzju:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzc:Lcom/google/android/gms/internal/ads/zzcmo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmo;->zzm()Lcom/google/android/gms/internal/ads/zzdmk;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdbf;-><init>()V

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzdbf;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzdbf;->zzb(Lcom/google/android/gms/internal/ads/zzfkd;)Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdbf;->zze()Lcom/google/android/gms/internal/ads/zzdbg;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdmk;->zze(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzdmk;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdhv;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzd:Lcom/google/android/gms/internal/ads/zzesh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzb:Ljava/util/concurrent/Executor;

    invoke-virtual {p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzdhv;->zzm(Lcom/google/android/gms/internal/ads/zzdfc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzdhv;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhv;->zzn()Lcom/google/android/gms/internal/ads/zzdhw;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdmk;->zzf(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzdmk;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeqn;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzf:Lcom/google/android/gms/internal/ads/zzbiq;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzeqn;-><init>(Lcom/google/android/gms/internal/ads/zzbiq;)V

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdmk;->zzd(Lcom/google/android/gms/internal/ads/zzeqn;)Lcom/google/android/gms/internal/ads/zzdmk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdmk;->zza()Lcom/google/android/gms/internal/ads/zzdml;

    move-result-object p2

    :goto_0
    move-object v8, p2

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdhv;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zze:Lcom/google/android/gms/internal/ads/zzfio;

    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzb:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdhv;->zza(Lcom/google/android/gms/internal/ads/zzdbw;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdhv;->zzb(Lcom/google/android/gms/internal/ads/zzddk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdhv;->zzc(Lcom/google/android/gms/internal/ads/zzdbz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzc:Lcom/google/android/gms/internal/ads/zzcmo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcmo;->zzm()Lcom/google/android/gms/internal/ads/zzdmk;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdbf;-><init>()V

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzdbf;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-virtual {v4, p3}, Lcom/google/android/gms/internal/ads/zzdbf;->zzb(Lcom/google/android/gms/internal/ads/zzfkd;)Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdbf;->zze()Lcom/google/android/gms/internal/ads/zzdbg;

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdmk;->zze(Lcom/google/android/gms/internal/ads/zzdbg;)Lcom/google/android/gms/internal/ads/zzdmk;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzd:Lcom/google/android/gms/internal/ads/zzesh;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzb:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhv;->zzm(Lcom/google/android/gms/internal/ads/zzdfc;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhv;->zza(Lcom/google/android/gms/internal/ads/zzdbw;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhv;->zzb(Lcom/google/android/gms/internal/ads/zzddk;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhv;->zzc(Lcom/google/android/gms/internal/ads/zzdbz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhv;->zzf(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhv;->zzg(Lcom/google/android/gms/internal/ads/zzdkd;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhv;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhv;->zzk(Lcom/google/android/gms/internal/ads/zzden;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdhv;->zzd(Lcom/google/android/gms/internal/ads/zzdcm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhv;->zzn()Lcom/google/android/gms/internal/ads/zzdhw;

    move-result-object p2

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdmk;->zzf(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzdmk;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeqn;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzf:Lcom/google/android/gms/internal/ads/zzbiq;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzeqn;-><init>(Lcom/google/android/gms/internal/ads/zzbiq;)V

    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdmk;->zzd(Lcom/google/android/gms/internal/ads/zzeqn;)Lcom/google/android/gms/internal/ads/zzdmk;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdmk;->zza()Lcom/google/android/gms/internal/ads/zzdml;

    move-result-object p2

    goto :goto_0

    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbjo;->zzc:Lcom/google/android/gms/internal/ads/zzbjf;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbjf;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdml;->zzc()Lcom/google/android/gms/internal/ads/zzfpj;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzfpj;->zzi(I)Lcom/google/android/gms/internal/ads/zzfpj;

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfpj;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfpj;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfpj;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfpj;

    move-object v6, p2

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    move-object v6, p1

    :goto_2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdml;->zzb()Lcom/google/android/gms/internal/ads/zzcyc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcyc;->zzb()LN2/o;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcyc;->zzc(LN2/o;)LN2/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzi:LN2/o;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfhl;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfhl;-><init>(Lcom/google/android/gms/internal/ads/zzfhn;Lcom/google/android/gms/internal/ads/zzesw;Lcom/google/android/gms/internal/ads/zzfpj;Lcom/google/android/gms/internal/ads/zzfoz;Lcom/google/android/gms/internal/ads/zzdml;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    return v1
.end method

.method public final zzb()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzi:LN2/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbiq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzf:Lcom/google/android/gms/internal/ads/zzbiq;

    return-void
.end method

.method public final synthetic zzd()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzd:Lcom/google/android/gms/internal/ads/zzesh;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzflf;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzesh;->zzdJ(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method public final synthetic zze()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzb:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final synthetic zzf()Lcom/google/android/gms/internal/ads/zzesh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzd:Lcom/google/android/gms/internal/ads/zzesh;

    return-object v0
.end method

.method public final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfio;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zze:Lcom/google/android/gms/internal/ads/zzfio;

    return-object v0
.end method

.method public final synthetic zzh()Lcom/google/android/gms/internal/ads/zzfpm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzg:Lcom/google/android/gms/internal/ads/zzfpm;

    return-object v0
.end method

.method public final synthetic zzi(LN2/o;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhn;->zzi:LN2/o;

    return-void
.end method
