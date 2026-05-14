package k0;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.SystemClock;
import android.text.format.DateUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import s.AbstractC0824e;
/* renamed from: k0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0545b extends AbstractC0548e {
    private static final boolean DEBUG = false;
    private static final String TAG = "AsyncTaskLoader";
    private volatile RunnableC0544a mCancellingTask;
    private Executor mExecutor;
    private Handler mHandler;
    private long mLastLoadCompleteTime;
    private volatile RunnableC0544a mTask;
    private long mUpdateThrottle;

    public AbstractC0545b(Context context) {
        super(context);
        this.mLastLoadCompleteTime = -10000L;
    }

    public void cancelLoadInBackground() {
    }

    public void dispatchOnCancelled(RunnableC0544a runnableC0544a, Object obj) {
        onCanceled(obj);
        if (this.mCancellingTask == runnableC0544a) {
            rollbackContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mCancellingTask = null;
            deliverCancellation();
            executePendingTask();
        }
    }

    public void dispatchOnLoadComplete(RunnableC0544a runnableC0544a, Object obj) {
        if (this.mTask != runnableC0544a) {
            dispatchOnCancelled(runnableC0544a, obj);
        } else if (isAbandoned()) {
            onCanceled(obj);
        } else {
            commitContentChanged();
            this.mLastLoadCompleteTime = SystemClock.uptimeMillis();
            this.mTask = null;
            deliverResult(obj);
        }
    }

    @Override // k0.AbstractC0548e
    @Deprecated
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        TimeUnit timeUnit;
        String str2;
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (this.mTask != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.mTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mTask.f8332e);
        }
        if (this.mCancellingTask != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.mCancellingTask);
            printWriter.print(" waiting=");
            printWriter.println(this.mCancellingTask.f8332e);
        }
        if (this.mUpdateThrottle != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            printWriter.print(DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(this.mUpdateThrottle)));
            printWriter.print(" mLastLoadCompleteTime=");
            if (this.mLastLoadCompleteTime == -10000) {
                str2 = "--";
            } else {
                str2 = "-" + DateUtils.formatElapsedTime(timeUnit.toSeconds(SystemClock.uptimeMillis() - this.mLastLoadCompleteTime));
            }
            printWriter.print(str2);
            printWriter.println();
        }
    }

    public void executePendingTask() {
        if (this.mCancellingTask != null || this.mTask == null) {
            return;
        }
        if (this.mTask.f8332e) {
            this.mTask.f8332e = false;
            this.mHandler.removeCallbacks(this.mTask);
        }
        if (this.mUpdateThrottle > 0 && SystemClock.uptimeMillis() < this.mLastLoadCompleteTime + this.mUpdateThrottle) {
            this.mTask.f8332e = true;
            this.mHandler.postAtTime(this.mTask, this.mLastLoadCompleteTime + this.mUpdateThrottle);
            return;
        }
        if (this.mExecutor == null) {
            this.mExecutor = getExecutor();
        }
        RunnableC0544a runnableC0544a = this.mTask;
        Executor executor = this.mExecutor;
        if (runnableC0544a.f8329b == 1) {
            runnableC0544a.f8329b = 2;
            executor.execute(runnableC0544a.f8328a);
            return;
        }
        int d2 = AbstractC0824e.d(runnableC0544a.f8329b);
        if (d2 == 1) {
            throw new IllegalStateException("Cannot execute task: the task is already running.");
        }
        if (d2 == 2) {
            throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
        }
        throw new IllegalStateException("We should never reach this state");
    }

    public Executor getExecutor() {
        return AsyncTask.THREAD_POOL_EXECUTOR;
    }

    public boolean isLoadInBackgroundCanceled() {
        return this.mCancellingTask != null;
    }

    public abstract Object loadInBackground();

    @Override // k0.AbstractC0548e
    public boolean onCancelLoad() {
        if (this.mTask != null) {
            if (!isStarted()) {
                onContentChanged();
            }
            if (this.mCancellingTask != null) {
                if (this.mTask.f8332e) {
                    this.mTask.f8332e = false;
                    this.mHandler.removeCallbacks(this.mTask);
                }
                this.mTask = null;
                return false;
            } else if (this.mTask.f8332e) {
                this.mTask.f8332e = false;
                this.mHandler.removeCallbacks(this.mTask);
                this.mTask = null;
                return false;
            } else {
                RunnableC0544a runnableC0544a = this.mTask;
                runnableC0544a.f8330c.set(true);
                boolean cancel = runnableC0544a.f8328a.cancel(false);
                if (cancel) {
                    this.mCancellingTask = this.mTask;
                    cancelLoadInBackground();
                }
                this.mTask = null;
                return cancel;
            }
        }
        return false;
    }

    public void onCanceled(Object obj) {
    }

    @Override // k0.AbstractC0548e
    public void onForceLoad() {
        cancelLoad();
        this.mTask = new RunnableC0544a(this);
        executePendingTask();
    }

    public Object onLoadInBackground() {
        return loadInBackground();
    }

    public void setUpdateThrottle(long j5) {
        this.mUpdateThrottle = j5;
        if (j5 != 0) {
            this.mHandler = new Handler();
        }
    }
}
