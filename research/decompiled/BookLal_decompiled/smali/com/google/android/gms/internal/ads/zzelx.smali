.class public final Lcom/google/android/gms/internal/ads/zzelx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcvv;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdvn;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfkd;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgsa;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdyl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvv;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdvn;Lcom/google/android/gms/internal/ads/zzfkd;Lcom/google/android/gms/internal/ads/zzgsa;Lcom/google/android/gms/internal/ads/zzdyl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzb:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelx;->zza:Lcom/google/android/gms/internal/ads/zzcvv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelx;->zze:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzc:Lcom/google/android/gms/internal/ads/zzdvn;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzd:Lcom/google/android/gms/internal/ads/zzfkd;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzf:Lcom/google/android/gms/internal/ads/zzgsa;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzg:Lcom/google/android/gms/internal/ads/zzdyl;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;)Z
    .locals 0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Lcom/google/android/gms/internal/ads/zzfjp;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;)LN2/o;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzelw;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzelw;-><init>(Lcom/google/android/gms/internal/ads/zzelx;Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelx;->zze:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/lang/Object;)LN2/o;
    .locals 7

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbhv;->zzcQ:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzg:Lcom/google/android/gms/internal/ads/zzdyl;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdxz;->zzB:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/a;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzb:Landroid/content/Context;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzu:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkj;->zza(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzc:Lcom/google/android/gms/internal/ads/zzdvn;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfjv;->zzb:Lcom/google/android/gms/internal/ads/zzfju;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfju;->zzb:Lcom/google/android/gms/internal/ads/zzfjn;

    invoke-virtual {v2, v1, p2, v3}, Lcom/google/android/gms/internal/ads/zzdvn;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfjk;Lcom/google/android/gms/internal/ads/zzfjn;)Lcom/google/android/gms/internal/ads/zzcjz;

    move-result-object v2

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzW:Z

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcjz;->zzaw(Z)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhv;->zziZ:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzag:Z

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzE()Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v3, p2}, Lcom/google/android/gms/internal/ads/zzcwk;->zza(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzcwk;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjz;->zzE()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzf:Lcom/google/android/gms/internal/ads/zzgsa;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdvq;

    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/ads/zzgsa;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/ads/internal/util/zzat;

    invoke-direct {v5, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdvq;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/util/zzat;)V

    move-object v0, v5

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzg:Lcom/google/android/gms/internal/ads/zzdyl;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdxz;->zzC:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/ads/internal/util/client/a;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzelx;->zza:Lcom/google/android/gms/internal/ads/zzcvv;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcxo;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzcxo;-><init>(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcux;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzels;

    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzels;-><init>(Lcom/google/android/gms/internal/ads/zzcjz;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfkj;->zzb(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfjl;

    move-result-object v1

    invoke-direct {p1, v0, v2, v6, v1}, Lcom/google/android/gms/internal/ads/zzcux;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcww;Lcom/google/android/gms/internal/ads/zzfjl;)V

    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzcvv;->zzf(Lcom/google/android/gms/internal/ads/zzcxo;Lcom/google/android/gms/internal/ads/zzcux;)Lcom/google/android/gms/internal/ads/zzcur;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzg:Lcom/google/android/gms/internal/ads/zzdyl;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdxz;->zzD:Lcom/google/android/gms/internal/ads/zzdxz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/google/android/gms/ads/internal/util/client/a;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcur;->zzj()Lcom/google/android/gms/internal/ads/zzdvm;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzg:Lcom/google/android/gms/internal/ads/zzdyl;

    const/4 v1, 0x0

    invoke-virtual {p3, v2, v1, v5, v0}, Lcom/google/android/gms/internal/ads/zzdvm;->zzi(Lcom/google/android/gms/internal/ads/zzcjz;ZLcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/internal/ads/zzdyl;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwz;->zzd()Lcom/google/android/gms/internal/ads/zzdco;

    move-result-object p3

    new-instance v1, Lcom/google/android/gms/internal/ads/zzelt;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzelt;-><init>(Lcom/google/android/gms/internal/ads/zzcjz;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-virtual {p3, v1, v4}, Lcom/google/android/gms/internal/ads/zzdhu;->zzq(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Lcom/google/android/gms/internal/ads/zzfjp;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhv;->zzgn:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcur;->zzm()Lcom/google/android/gms/internal/ads/zzekq;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzekq;->zza(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzclq;->zzb(Lcom/google/android/gms/internal/ads/zzfjk;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzclq;->zza(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcur;->zzj()Lcom/google/android/gms/internal/ads/zzdvm;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzfjp;->zzb:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcvv;->zze()Lcom/google/android/gms/internal/ads/zzfpj;

    move-result-object v3

    invoke-static {v2, p3, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzdvm;->zzj(Lcom/google/android/gms/internal/ads/zzcjz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdyl;Lcom/google/android/gms/internal/ads/zzfpj;)LN2/o;

    move-result-object p3

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzM:Z

    if-eqz p2, :cond_5

    new-instance p2, Lcom/google/android/gms/internal/ads/zzelr;

    invoke-direct {p2, v2}, Lcom/google/android/gms/internal/ads/zzelr;-><init>(Lcom/google/android/gms/internal/ads/zzcjz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelx;->zze:Ljava/util/concurrent/Executor;

    invoke-interface {p3, p2, v0}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzelu;

    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/internal/ads/zzelu;-><init>(Lcom/google/android/gms/internal/ads/zzelx;Lcom/google/android/gms/internal/ads/zzcjz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelx;->zze:Ljava/util/concurrent/Executor;

    invoke-interface {p3, p2, v0}, LN2/o;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzelv;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzelv;-><init>(Lcom/google/android/gms/internal/ads/zzcur;)V

    invoke-static {p3, p2, v4}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd(Lcom/google/android/gms/internal/ads/zzcjz;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzJ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelx;->zzd:Lcom/google/android/gms/internal/ads/zzfkd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->zzh()Lcom/google/android/gms/internal/ads/zzclf;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfkd;->zza:Lcom/google/android/gms/ads/internal/client/zzfw;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzclf;->zzc(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhv;->zzbU:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbht;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbht;->zzd(Lcom/google/android/gms/internal/ads/zzbhm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjz;->onPause()V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcjz;->zzaG(Z)V

    :cond_1
    return-void
.end method
