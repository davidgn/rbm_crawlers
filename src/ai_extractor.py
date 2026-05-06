import subprocess
import json
import logging
import os

logger = logging.getLogger("AIExtractor")

def deep_extract(html_content):
    """
    Call the bibliographic-parser subagent via Gemini CLI to extract structured data.
    Uses the non-interactive piped syntax with --skip-trust for automation.
    """
    try:
        # Use a pipe to send HTML content directly to the gemini CLI
        # --skip-trust is used to bypass the interactive trust prompt in non-interactive mode.
        cmd = ["gemini", "--skip-trust", "@bibliographic-parser", "-p", ""]
        process = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        stdout, stderr = process.communicate(input=html_content)
        
        if process.returncode == 0:
            try:
                raw_out = stdout.strip()
                # Surgical extraction of JSON from markdown blocks (hex for backticks)
                backtick_block = "\x60\x60\x60"
                if f"{backtick_block}json" in raw_out:
                    raw_out = raw_out.split(f"{backtick_block}json")[1].split(backtick_block)[0].strip()
                elif backtick_block in raw_out:
                    raw_out = raw_out.split(backtick_block)[1].split(backtick_block)[0].strip()
                
                # Further cleanup
                if "{" in raw_out:
                    raw_out = raw_out[raw_out.find("{"):raw_out.rfind("}")+1]
                    
                return json.loads(raw_out)
            except json.JSONDecodeError:
                logger.error(f"Failed to decode AI output: {stdout}")
        else:
            logger.error(f"AI Extraction command failed: {stderr}")
    except Exception as e:
        logger.error(f"AI Extraction error: {e}")
    return None
